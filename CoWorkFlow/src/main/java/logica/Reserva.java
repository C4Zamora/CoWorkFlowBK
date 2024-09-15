package logica;


public class Reserva {
    private String username;
    private String agendaDate;
    private String workspace;
    private String duracion;

    public Reserva() {
    }

    public Reserva(String username, String agendaDate, String workspace, String duracion) {
        this.username = username;
        this.agendaDate = agendaDate;
        this.workspace = workspace;
        this.duracion = duracion;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAgendaDate() {
        return agendaDate;
    }

    public void setAgendaDate(String agendaDate) {
        this.agendaDate = agendaDate;
    }

    public String getWorkspace() {
        return workspace;
    }

    public void setWorkspace(String workspace) {
        this.workspace = workspace;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }
    
    
    
   
}
