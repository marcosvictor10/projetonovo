package controle;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.ModeloFuncionario;


public class ControleFuncionario {

    ResultSet rs = null;
    ModeloFuncionario modeloFuncionario = new ModeloFuncionario();
    public boolean result = false;

    //Cadastro  OK[x] Desenvolvimento[]
    public void Cadastrar(ModeloFuncionario modeloFuncionario) {
        //Abertura de Conexão
        Connection con = Conexao.Conecta();
        String sql = "INSERT INTO tb_funcionario(nome_funcionario, cpf_funcionario, nasci_funcionario, email_funcionario, tel_funcionario, tipo_funcionario, senha_funcionario, dica1_funcionario, dica2_funcionario, dica3_funcionario) VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, modeloFuncionario.getNome());
            pst.setString(2, modeloFuncionario.getCpf());
            pst.setString(3, modeloFuncionario.getNascimento());
            pst.setString(4, modeloFuncionario.getEmail());
            pst.setString(5, modeloFuncionario.getTelefone());
            pst.setString(6, modeloFuncionario.getTipo());
            pst.setString(7, modeloFuncionario.getSenha());
            pst.setString(8, modeloFuncionario.getDica1());
            pst.setString(9, modeloFuncionario.getDica2());
            pst.setString(10, modeloFuncionario.getDica3());
            pst.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean logar(String cpf, String senha) {
        //Abertura de Conexão
        Connection con = Conexao.Conecta();
        String sql = "SELECT * FROM tb_funcionario WHERE cpf_funcionario = '" + cpf + "' AND senha_funcionario = '" + senha + "';";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            if (rs.next()) {
                result = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

}
