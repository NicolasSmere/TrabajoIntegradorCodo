


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonaDao {
    public List<Persona> obtenerTodos() throws SQLException {
        List<Persona> usuarios = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM persona");
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                Persona persona = new Persona();
                persona.setId(rs.getInt("id"));
                persona.setDni(rs.getInt("dni"));
                persona.setNombre(rs.getString("nombre"));
                persona.setApellido(rs.getString("apellido"));
                persona.setCorreo(rs.getString("correo"));
                // Otros campos aquí...
                
                usuarios.add(persona);
            }
        }
        return usuarios;
    }
    
    public void insertar(Persona persona) throws SQLException {
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO persona (nombre) VALUES (?)")) {
            
            stmt.setInt(1, persona.getDni());
            stmt.setString(2, persona.getNombre());
            stmt.setString(3, persona.getApellido());
            stmt.setString(4, persona.getCorreo());
            
            
            stmt.executeUpdate();
        }
    }
    
    public void actualizar(Persona persona) throws SQLException {
    try (Connection conn = DBConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement("UPDATE persona SET nombre = ? WHERE id = ?")) {

            stmt.setInt(1, persona.getDni());
            stmt.setString(2, persona.getNombre());
            stmt.setString(3, persona.getApellido());
            stmt.setString(4, persona.getCorreo());
            
            
            stmt.executeUpdate();
        }    
    }
    
    public void eliminar(int id) throws SQLException {
    try (Connection conn = DBConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement("DELETE FROM persona WHERE id = ?")) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }

    
}
