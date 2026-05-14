package entidades;

import entidades.Producto;
import entidades.Usuario;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2026-05-14T15:22:04", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Reseña.class)
public class Reseña_ { 

    public static volatile SingularAttribute<Reseña, Date> fecha;
    public static volatile SingularAttribute<Reseña, Usuario> usuario;
    public static volatile SingularAttribute<Reseña, Long> id;
    public static volatile SingularAttribute<Reseña, Producto> producto;
    public static volatile SingularAttribute<Reseña, String> comentario;
    public static volatile SingularAttribute<Reseña, Integer> estrellas;

}