public class Telefone {
	private String codPais;
    private String ddd;
    private String numero;

    public String getCodPais(){
    	return codPais;
		}
    public void setCodPais(String codPais){
        this.codPais = codPais;
    	}
    public String getDdd(){
        return ddd;
    	}
    public void setDdd(String ddd){
        if(ddd.length() == 2 ){
            this.ddd = ddd;
        } else {
            System.debug('DDD INVÁLIDO');
        }
        
	}
    public String getNumero(){
        return numero;
    }
    public void setNumero(String numero){
        if(numero.length() == 9){
            String numero2 = numero.mid(0,5);
  			String numero3 = numero.mid(5,8);
            this.numero = numero2 + '-' + numero3;
        }else{
            System.debug('numero inválido.');
            this.numero = null;
        }
    }
	public Telefone(){}
	public Telefone(String codPais,String ddd, String numero){
    	this.codPais = codPais;
    	this.ddd = ddd;
    	this.numero = numero;
        setDdd(ddd);
        setNumero(numero);
		}
    public void exibirTelefone(){
        System.debug('Telefone: +' + codPais + '(' + ddd +')' + numero);
    }
}