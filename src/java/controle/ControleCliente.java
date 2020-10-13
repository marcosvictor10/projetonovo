package controle;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.ModeloCliente;

public class ControleCliente {
    //Cadastro  OK[x] Desenvolvimento[]

    public void Cadastrar(ModeloCliente modeloCliente) {
        //Abertura de Conexão
        Connection con = Conexao.Conecta();
        String sql = "INSERT INTO tb_cliente(nome_cliente, nasc_cliente, cpf_cliente, telefone_cliente, email_cliente) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, modeloCliente.getNome());
            pst.setString(2, modeloCliente.getDataNasc());
            pst.setString(3, modeloCliente.getCpf());
            pst.setString(4, modeloCliente.getTelefone());
            pst.setString(5, modeloCliente.getEmail());
            pst.execute();
            con.close();
        } catch (Exception e) {
             throw new RuntimeException(e) ;
        }
    }

    //Alterar
    public void Alterar(ModeloCliente modeloCliente) {
        try {
            Connection con = Conexao.Conecta();
            String sql = "UPDATE tb_cliente SET nome_cliente = ?, nasc_cliente = ?, cpf_cliente = ?, telefone_cliente = ?, email_cliente = ? WHERE id_cliente = ?";

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, modeloCliente.getNome());
            pst.setString(2, modeloCliente.getDataNasc());
            pst.setString(3, modeloCliente.getCpf());
            pst.setString(4, modeloCliente.getTelefone());
            pst.setString(5, modeloCliente.getEmail());
            pst.setInt(6, modeloCliente.getId());
            pst.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Excluir
    public void Excluir(int id_cliente) {
        try {
            Connection con = Conexao.Conecta();
            String sql = "DELETE FROM tb_cliente WHERE id_cliente = " + id_cliente;
            Statement st = con.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<ModeloCliente> getCliente() {
        ArrayList<ModeloCliente> lista = new ArrayList<ModeloCliente>();
        try {
            Connection con = Conexao.Conecta();
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM tb_cliente ORDER BY id_cliente";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                ModeloCliente modeloCliente = new ModeloCliente();

                modeloCliente.setId(rs.getInt("id_cliente"));
                modeloCliente.setCpf(rs.getString("cpf_cliente"));
                modeloCliente.setNome(rs.getString("nome_cliente"));
                modeloCliente.setDataNasc(rs.getString("nasc_cliente"));
                modeloCliente.setTelefone(rs.getString("telefone_cliente"));
                modeloCliente.setEmail(rs.getString("email_cliente"));
                lista.add(modeloCliente);
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
           throw new RuntimeException(e);
        }
        return lista;
    }
}
