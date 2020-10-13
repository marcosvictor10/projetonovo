package modelo;
/*
 * @author Armando
 */
public class ModeloFuncionario {
    //Atributos
    private int id;
    private String cpf;
    private String nome;
    private String nascimento;
    private String email;
    private String telefone;
    private String tipo;
    private String senha;
    private String dica1;
    private String dica2;
    private String dica3;
        
    //Métodos de Acesso
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getNascimento() {
        return nascimento;
    }
    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelefone() {
        return telefone;
    }
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    public String getTipo() {
        return tipo;
    }
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }
    public String getDica1() {
        return dica1;
    }
    public void setDica1(String dica1) {
        this.dica1 = dica1;
    }
    public String getDica2() {
        return dica2;
    }
    public void setDica2(String dica2) {
        this.dica2 = dica2;
    }
    public String getDica3() {
        return dica3;
    }
    public void setDica3(String dica3) {
        this.dica3 = dica3;
    }}