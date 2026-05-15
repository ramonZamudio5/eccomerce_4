package util;

import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;

import java.security.Key;
import java.util.Date;
import static javax.crypto.Cipher.SECRET_KEY;

public class JWTUtil {

    private static final String SECRET =
            "APLICACIONESWEBEQUIPOCUATRORAMONYLUISFACILPASAMOS";

    private static final Key KEY =
            Keys.hmacShaKeyFor(SECRET.getBytes());

    public static String generarToken(String correo, String rol, Long idUsuario){

        return Jwts.builder()
                .claim("idUsuario", idUsuario)
                .claim("rol", rol)
                .setSubject(correo)                 
                .setIssuedAt(new Date())
                .setExpiration(
                        new Date(System.currentTimeMillis() + 86400000)
                )               
                .signWith(KEY, SignatureAlgorithm.HS256)
                .compact();
    }

    public static Claims validarToken(String token){

        return Jwts.parserBuilder()
                .setSigningKey(KEY)
                .build()
                .parseClaimsJws(token)
                .getBody();
    }
    
    public static Key getSecretKey() {
        return Keys.hmacShaKeyFor(
            SECRET.getBytes()
        );
    }
}