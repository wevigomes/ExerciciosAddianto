public class Endereco {
	private String logradouro;
    private String nome;
    private Integer numero;
    private String complemento;
    private String cep;
    private String cidade;
    private String estado;
    public List<String> estados = new List<String>{'AC','AL','AP','AM','BA','CE','ES','GO','MA','MT','MS','MG','PA','PB','PE','PR','PI','RJ','RN','RS','RS','RO','RR','SC','SP','SE','TO','DF'};
    
    {
        
    }
    public String getLogradouro(){
        return logradouro;
    }
    public void setLogradouro(String logradouro){
        this.logradouro = logradouro;
    }
     public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
     public Integer getNumero(){
        return numero;
    }
    public void setNumero(Integer numero){
        this.numero = numero;
    }
     public String getComplemento(){
        return complemento;
    }
    public void setComplemento(String complemento){
        this.complemento = complemento;
    }
   	public String getCep(){
        return cep;
    }
    public void setCep(String cep){
        if(cep.length() == 8){
            String cep2 = cep.mid(0,5);
  			String cep3 = cep.mid(5,7);
            this.cep = cep2 + '-' + cep3;
        }else{
            System.debug('cep inválido.');
            this.cep = null;
        }
    }
   	public String getCidade(){
        return cidade;
    }
    public void setCidade(String cidade){
        this.cidade = cidade;
    }
    public String getEstado(){
        return estado;
    
    }
    public void setEstado(String estado){
        
       	estado = estado.toUpperCase();
        
        if(estados.contains(estado)){
            this.estado = estado;
        } else{
            System.debug('ERRO.USE A UF DO SEU ESTADO.');
            this.estado = null;
        }
    }
    public Endereco(){}
    public Endereco(String logradouro, String nome, Integer numero, String cep, String cidade, String estado){
        this.logradouro = logradouro;
        this.nome = nome;
        this.numero = numero;
        this.cep = cep;
        this.cidade = cidade;
        this.estado = estado;
        setCep(cep);
        setEstado(estado);
    }
    public void exibirEndereco(){
        System.debug(logradouro + ' ' + nome + ' , ' + numero +' - ' + cep +' - '+ cidade +' - '+ estado);
    }
}