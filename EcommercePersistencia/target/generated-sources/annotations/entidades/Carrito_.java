package entidades;

import entidades.DetallesCarrito;
import entidades.Usuario;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-12T18:17:05", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Carrito.class)
public class Carrito_ { 

    public static volatile SingularAttribute<Carrito, Double> total;
    public static volatile SingularAttribute<Carrito, Usuario> usuario;
    public static volatile SingularAttribute<Carrito, Long> id;
    public static volatile ListAttribute<Carrito, DetallesCarrito> detallesCarrito;

}