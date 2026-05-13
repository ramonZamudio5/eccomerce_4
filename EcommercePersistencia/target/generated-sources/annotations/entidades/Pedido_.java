package entidades;

import entidades.DetallesPedido;
import entidades.EstadoPedido;
import entidades.MetodoPago;
import entidades.Usuario;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-12T18:17:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Pedido.class)
public class Pedido_ { 

    public static volatile SingularAttribute<Pedido, MetodoPago> metodoPago;
    public static volatile SingularAttribute<Pedido, Date> fecha;
    public static volatile SingularAttribute<Pedido, EstadoPedido> estado;
    public static volatile SingularAttribute<Pedido, Double> total;
    public static volatile SingularAttribute<Pedido, String> direccion;
    public static volatile SingularAttribute<Pedido, String> numeroPedido;
    public static volatile SingularAttribute<Pedido, Usuario> usuario;
    public static volatile SingularAttribute<Pedido, Long> id;
    public static volatile ListAttribute<Pedido, DetallesPedido> detallesPedido;

}