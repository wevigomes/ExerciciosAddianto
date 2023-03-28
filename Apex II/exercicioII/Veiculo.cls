public class Veiculo {
    public String placa;
    public String marca;
    public String tipo;
    public String modelo;
    public Integer anoFabricacao;
    public String proprietarioAtual;
    public String proprietarioAnterior;
    public Boolean novo;
    public Decimal valorCompra;
    public Decimal valorVenda;
    
    {
      valorVenda = 0;
      marca = 'a definir';
      modelo = 'a definir';
    }
  
    public Veiculo(){}
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
        this.placa = placa;
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
          this.proprietarioAtual = 'A loja';
            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    public Veiculo(String marca, String tipo, String modelo){
        this.marca = marca;
        this.tipo = tipo;
        this.modelo = modelo;
    }
    public String getTipo(){
        return tipo;
    }
    public void setTipo(String tipo){
        this.tipo = tipo;
    }
    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
}