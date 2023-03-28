public class Cliente {
    public String nome;
    public String rg;
    public String cpf;
    public String telefone;
    public String email;
    public String endereco;

{
    rg = 'a definir';
    email = 'a definir';
    endereco = 'a definir';
}
    public Cliente(){}
	public Cliente (String nome, String cpf, String telefone){
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
    }
    public Cliente(String rg, String email){
        this.rg = rg;
        this.email = email;
    }
}