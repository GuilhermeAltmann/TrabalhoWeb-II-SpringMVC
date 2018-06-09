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

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "not_notas")
public class Nota {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "not_id")
	private Long id;
	
	@NotNull(message = "A nota é obrigatória")
	@Min(value = 0, message = "A nota deve ser maior ou igual a 0")
	@Max(value = 10, message = "A nota deve ser maior ou igual a 10")
	@Column(name = "not_nota1", nullable = false)
	private Double nota1;
	
	@NotNull(message = "A nota é obrigatória")
	@Min(value = 0, message = "A nota deve ser maior ou igual a 0")
	@Max(value = 10, message = "A nota deve ser maior ou igual a 10")
	@Column(name = "not_nota2", nullable = false)
	private Double nota2;
	
	@NotNull(message = "A nota é obrigatória")
	@Min(value = 0, message = "A nota deve ser maior ou igual a 0")
	@Max(value = 10, message = "A nota deve ser maior ou igual a 10")
	@Column(name = "not_nota3", nullable = false)
	private Double nota3;
	

	@Column(name = "not_media", nullable = false)
	private Double media;
	
	@JsonManagedReference
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "dis_id")
	private Disciplina disciplina;
	
	@JsonManagedReference
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "alu_id")
	private Aluno aluno;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Double getNota1() {
		return nota1;
	}

	public void setNota1(Double nota1) {
		this.nota1 = nota1;
	}

	public Double getNota2() {
		return nota2;
	}

	public void setNota2(Double nota2) {
		this.nota2 = nota2;
	}

	public Double getNota3() {
		return nota3;
	}

	public void setNota3(Double nota3) {
		this.nota3 = nota3;
	}

	public Double getMedia() {
		return media;
	}

	public void setMedia(Double media) {
		this.media = media;
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
}
