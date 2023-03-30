public virtual class Pessoa {
	public String nome;
    public String rg;
    public String cpf;
    public String email;
    public Telefone telefone = new Telefone();
	public Endereco endereco = new Endereco();

    public void exibirDados(){
        System.debug('Nome: ' + nome);
        System.debug('Rg: ' + rg);
        System.debug('CPF: ' + cpf);
    }
    public void definirEndereco(String logradouro, String nome, Integer numero, String cep, String cidade, String estado){
        endereco = new Endereco(logradouro, nome, numero, cep, cidade, estado);
    }
}