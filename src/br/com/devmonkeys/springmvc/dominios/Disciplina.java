package br.com.devmonkeys.springmvc.dominios;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "dis_disciplina")
public class Disciplina {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "dis_id")
	private Long id;
	
	@NotNull(message = "O nome é obrigatório")
	@Size(min = 1, max = 125, message = "O nome deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O nome é obrigatório")
	@Column(name = "dis_nome", length = 125, nullable = false)
	private String nome;
	
	@NotNull(message = "O código é obrigatório")
	@Size(min = 1, max = 125, message = "O código deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O código é obrigatório")
	@Column(name = "dis_codigo", length = 125, nullable = false)
	private String codigo;
	
	@NotNull(message = "A carga horaria é obrigatório")
	@Min(value = 20, message = "A carga horaria deve ser maior que 20")
	@Max(value = 120, message = "A carga horaria deve ser menor que 80")
	@Column(name = "pro_carga_horaria", nullable = false)
	private int cargaHoraria;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "pro_id")
	private Professor professor;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public int getCargaHoraria() {
		return cargaHoraria;
	}

	public void setCargaHoraria(int cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
}
