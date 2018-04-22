package Model;

import java.util.Date;

public class RDV {
	private int idRDV,idApp,idAgent,idClient;
	private boolean etat;
	private Date d;
	public int getIdRDV() {
		return idRDV;
	}
	public void setIdRDV(int idRDV) {
		this.idRDV = idRDV;
	}
	public int getIdApp() {
		return idApp;
	}
	public void setIdApp(int idApp) {
		this.idApp = idApp;
	}
	public int getIdAgent() {
		return idAgent;
	}
	public void setIdAgent(int idAgent) {
		this.idAgent = idAgent;
	}
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public boolean isEtat() {
		return etat;
	}
	public void setEtat(boolean etat) {
		this.etat = etat;
	}
	public Date getD() {
		return d;
	}
	public void setD(Date d) {
		this.d = d;
	}
}
