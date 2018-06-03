package br.com.devmonkeys.springmvc.dominios;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "alu_alunos")
public class Aluno {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "alu_id")
	private Long id;
	
	@NotNull(message = "O nome é obrigatório")
	@Size(min = 1, max = 125, message = "O nome deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O nome é obrigatório")
	@Column(name = "alu_nome", length = 125, nullable = false)
	private String nome;
	
	@NotNull(message = "O número de telefone é obrigatório")
	@Size(min = 9, max = 15, message = "O número de telefone deve conter entre 9 e 15 caracteres")
	@NotEmpty(message = "O número de telefone é obrigatório")
	@Column(name = "alu_telefone", length = 15, nullable = false)
	private String telefone;
	
	@NotNull(message = "O endereço é obrigatório")
	@Size(min = 1, max = 125, message = "O endereço deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O endereço é obrigatório")
	@Column(name = "alu_endereco", length = 125, nullable = false)
	private String endereco;
	
	@NotNull(message = "O email é obrigatório")
	@Size(min = 1, max = 125, message = "O email deve conter entre 1 e 125 caracteres")
	@NotEmpty(message = "O email é obrigatório")
	@Column(name = "alu_email", length = 125, nullable = false)
	private String email;

	@NotNull(message = "A matricula é obrigatória")
	@Size(min = 1, max = 10, message = "A matricula deve conter entre 1 e 10 caracteres")
	@NotEmpty(message = "A matricula é obrigatória")
	@Column(name = "alu_matricula", length = 10, nullable = false)
	private String matricula;
	
	@NotNull(message = "O cpf é obrigatório")
	@Size(min = 11, max = 14, message = "O cpf deve conter entre 11 e 14 caracteres")
	@NotEmpty(message = "O cpf é obrigatório")
	@Column(name = "alu_cpf", length = 14, nullable = false)
	private String cpf;

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

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
}


