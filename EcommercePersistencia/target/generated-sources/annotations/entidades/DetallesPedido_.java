package entidades;

import entidades.Pedido;
import entidades.Producto;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-14T15:22:04", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(DetallesPedido.class)
public class DetallesPedido_ { 

    public static volatile SingularAttribute<DetallesPedido, Pedido> pedido;
    public static volatile SingularAttribute<DetallesPedido, Long> id;
    public static volatile SingularAttribute<DetallesPedido, Integer> cantidad;
    public static volatile SingularAttribute<DetallesPedido, Producto> producto;

}