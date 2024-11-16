package it.generationitaly.musicator.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/*CREATE TABLE brano (
id BIGINT AUTO_INCREMENT NOT NULL,
titolo VARCHAR(200) NOT NULL,
testo VARCHAR(4000) NOT NULL,
durata INT NOT NULL,
data_uscita DATE NOT NULL,
lingua VARCHAR(90) NOT NULL,
foto VARCHAR(4000),
yt_link VARCHAR(1000) NOT NULL,
genere_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (genere_id)
    REFERENCES genere (id)
);*/
@Entity
@Table(name = "brano")
public class Brano {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "titolo", nullable = false, length = 200)
	private String titolo;

	@Column(name = "testo", nullable = false, length = 4000)
	private String testo;

	@Column(name = "durata", nullable = false)
	private int durata;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_uscita", nullable = false)
	private Date dataUscita;

	@Column(name = "lingua", nullable = false)
	private String lingua;

	@Column(name = "foto")
	private String foto;

	@Column(name = "yt_link", nullable = false, length = 1000)
	private String ytLink;

	@ManyToOne
	@JoinColumn(name = "genere_id", nullable = false)
	private Genere genere;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "album_brano", joinColumns = @JoinColumn(name = "brano_id"), inverseJoinColumns = @JoinColumn(name = "album_id"))
	private List<Album> album = new ArrayList<Album>();

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getTesto() {
		return testo;
	}

	public void setTesto(String testo) {
		this.testo = testo;
	}

	public int getDurata() {
		return durata;
	}

	public void setDurata(int durata) {
		this.durata = durata;
	}

	public Date getDataUscita() {
		return dataUscita;
	}

	public void setDataUscita(Date dataUscita) {
		this.dataUscita = dataUscita;
	}

	public String getLingua() {
		return lingua;
	}

	public void setLingua(String lingua) {
		this.lingua = lingua;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getYtLink() {
		return ytLink;
	}

	public void setYtLink(String ytLink) {
		this.ytLink = ytLink;
	}

	public Genere getGenere() {
		return genere;
	}

	public void setGenere(Genere genere) {
		this.genere = genere;
	}

	public List<Album> getAlbum() {
		return album;
	}

	public void setAlbum(List<Album> album) {
		this.album = album;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true; // Self-comparison
		if (o == null || getClass() != o.getClass())
			return false; // Null or class mismatch

		Brano brano = (Brano) o; // Cast object to Person

		// Compare relevant fields
		return id == brano.id;
	}

	@Override
	public int hashCode() {
		// Combine fields to generate hash code
		return Objects.hash(id);
	}

	@Override
	public String toString() {
		return "Brano [id=" + id + ", titolo=" + titolo + ", testo=" + testo + ", durata=" + durata + ", dataUscita="
				+ dataUscita + ", lingua=" + lingua + ", foto=" + foto + ", ytLink=" + ytLink + "]";
	}

}
