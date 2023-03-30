public class Funcionario extends Pessoa{
	public Integer matricula;

    // Definindo construtor para resolver a questão
    public Funcionario(Integer matricula, String nome, String cpf){
        this.nome = nome;
        this.matricula = matricula;
        this.cpf = cpf;
    }
    public Funcionario(){}

    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.getPlaca() + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        System.debug('Valor da venda: ' + veiculo.valorVenda);
    }

    public void exibirDadosFuncionario(){
        System.debug('Nome do funcionário: ' + nome);
        System.debug('CPF: ' + cpf);
        System.debug('Matricula: ' + matricula);
    }
}