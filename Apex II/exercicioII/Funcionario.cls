public class Funcionario {
    public String nome;
    public String rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    public Decimal comissao;

    {
        comissao = 0;
        email = 'a definir';
        rg = 'a definir';
    }
    public Funcionario(){}
    public Funcionario(String nome, String cpf, Integer matricula){
        this.nome = nome;
        this.cpf = cpf;
        this.matricula = matricula;
    }
    public Funcionario(String nome, String rg, String telefone){
        this.nome = nome;
        this.rg = rg;
        this.telefone = telefone;
    }
    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.placa + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Valor da venda: ' + veiculo.valorVenda);
        if(veiculo.tipo == 'carro'){
            comissao = (0.15 * veiculo.valorVenda);  
        } else{
            comissao = (0.10 * veiculo.valorVenda);
        }
  
        System.debug('Comissão funcionário: R$' + comissao);
         if(veiculo.novo == true){
           		comissao += 300;
             System.debug('Bônus de veículo novo: ' +300);
         } else{
                comissao +=200;
         		System.debug('Bônus de veículo usado: ' + 200);      
         }
    }
}