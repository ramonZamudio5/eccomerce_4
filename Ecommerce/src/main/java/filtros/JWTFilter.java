package filtros;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import util.JWTUtil;

@WebFilter(urlPatterns = {"/api/*"})
public class JWTFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request,
            ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        
        String authorization =
                req.getHeader("Authorization");

        if (authorization == null
                || !authorization.startsWith("Bearer ")) {

            res.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

            res.setContentType("application/json");

            res.getWriter().write(
                "{"
                + "\"success\": false,"
                + "\"message\": \"Token no proporcionado\""
                + "}"
            );

            return;
        }

        String token =
                authorization.substring(7);

        try {

            Claims claims = Jwts.parserBuilder()
                    .setSigningKey(JWTUtil.getSecretKey())
                    .build()
                    .parseClaimsJws(token)
                    .getBody();

            String correo = claims.getSubject();
            
            Object idObj = claims.get("idUsuario");
            if (idObj != null) {
                Long idUsuario = Long.valueOf(idObj.toString());
                System.out.println("Id usuario en FILTRO: " + idUsuario); // parece que nunca pasa por aqui
                req.setAttribute("idUsuario", idUsuario);
            }
            
            String rol =
                    claims.get("rol", String.class);

            req.setAttribute("correo", correo);

            req.setAttribute("rol", rol);
            
//            req.setAttribute("idUsuario", idUsuario);

            chain.doFilter(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            res.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

            res.setContentType("application/json");

            res.getWriter().write(
                "{"
                + "\"success\": false,"
                + "\"message\": \"Token inválido o expirado\""
                + "}"
            );
        }
    }

    @Override
    public void destroy() {

    }
}