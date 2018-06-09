package br.com.devmonkeys.springmvc.dominios;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "pro_professores")
public class Professor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pro_id")
	private Long id;
	
	@NotNull(message = "O nome é obrigatório")
	@Size(min = 1, max = 125, message = "O nome deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O nome é obrigatório")
	@Column(name = "pro_nome", length = 125, nullable = false)
	private String nome;
	
	@NotNull(message = "O cpf é obrigatório")
	@Size(min = 11, max = 14, message = "O cpf deve conter entre 11 e 14 caracteres")
	@NotEmpty(message = "O cpf é obrigatório")
	@Column(name = "pro_cpf", length = 14, nullable = false)
	private String cpf;
	
	@NotNull(message = "O número de telefone é obrigatório")
	@Size(min = 9, max = 15, message = "O número de telefone deve conter entre 9 e 15 caracteres")
	@NotEmpty(message = "O número de telefone é obrigatório")
	@Column(name = "pro_telefone", length = 15, nullable = false)
	private String telefone;
	
	@NotNull(message = "O endereço é obrigatório")
	@Size(min = 1, max = 125, message = "O endereço deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O endereço é obrigatório")
	@Column(name = "pro_endereco", length = 125, nullable = false)
	private String endereco;
	
	@NotNull(message = "O email é obrigatório")
	@Size(min = 1, max = 125, message = "O email deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O email é obrigatório")
	@Column(name = "pro_email", length = 125, nullable = false)
	private String email;
	
	@NotNull(message = "O registro é obrigatório")
	@Size(min = 1, max = 125, message = "O registro deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O registro é obrigatório")
	@Column(name = "pro_registro", length = 125, nullable = false)
	private String registro;
	
	
	@NotNull(message = "O salário é obrigatório")
	@Min(value = 1, message = "o salário deve ser maior que 1")
	@Column(name = "pro_salario", nullable = false)
	private Double salario;

	@JsonBackReference
	@OneToMany(mappedBy = "professor", fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	private Set<Disciplina> disciplinas;

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


	public String getCpf() {
		return cpf;
	}


	public void setCpf(String cpf) {
		this.cpf = cpf;
	}


	public String getTelefone() {
		return telefone;
	}


	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}


	public String getEndereco() {
		return endereco;
	}


	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getRegistro() {
		return registro;
	}


	public void setRegistro(String resgistro) {
		this.registro = resgistro;
	}


	public Double getSalario() {
		return salario;
	}


	public void setSalario(Double salario) {
		this.salario = salario;
	}


	public Set<Disciplina> getDisciplinas() {
		return disciplinas;
	}


	public void setDisciplinas(Set<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}
	
	
}
