package controle;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.ModeloFornecedor;

public class ControleFornecedor {

    //Cadastro  OK[x] Desenvolvimento[]
    public void Cadastrar(ModeloFornecedor modeloFornecedor) {
        //Abertura de Conexão
        Connection con = Conexao.Conecta();
        String sql = "INSERT INTO tb_fornecedor(cnpj_fornecedor, nome_fornecedor, endereco_fornecedor, numero_fornecedor, estado_fornecedor, cidade_fornecedor, cep_fornecedor, telefone_fornecedor) VALUES(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, modeloFornecedor.getCnpj());
            pst.setString(2, modeloFornecedor.getNome());
            pst.setString(3, modeloFornecedor.getEndereco());
            pst.setString(4, modeloFornecedor.getNumero());
            pst.setString(5, modeloFornecedor.getEstado());
            pst.setString(6, modeloFornecedor.getCidade());
            pst.setString(7, modeloFornecedor.getCep());
            pst.setString(8, modeloFornecedor.getTelefone());
            pst.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Alterar
    public void Alterar(ModeloFornecedor modeloFornecedor) {
        try {
            Connection con = Conexao.Conecta();
            String sql = "UPDATE tb_fornecedor SET cnpj_fornecedor = ?, nome_fornecedor = ?, endereco_fornecedor = ?, numero_fornecedor = ?, estado_fornecedor = ?, cidade_fornecedor = ?, cep_fornecedor = ?, telefone_fornecedor = ? WHERE id_fornecedor = ?";

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, modeloFornecedor.getCnpj());
            pst.setString(2, modeloFornecedor.getNome());
            pst.setString(3, modeloFornecedor.getEndereco());
            pst.setString(4, modeloFornecedor.getNumero());
            pst.setString(5, modeloFornecedor.getEstado());
            pst.setString(6, modeloFornecedor.getCidade());
            pst.setString(7, modeloFornecedor.getCep());
            pst.setString(8, modeloFornecedor.getTelefone());
            pst.setInt(9, modeloFornecedor.getId());
            pst.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Excluir
    public void Excluir(int id_fornecedor) {
        try {
            Connection con = Conexao.Conecta();
            String sql = "DELETE FROM tb_fornecedor WHERE id_fornecedor = " + id_fornecedor;
            Statement st = con.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<ModeloFornecedor> getFornecedor() {
        ArrayList<ModeloFornecedor> lista = new ArrayList<ModeloFornecedor>();
        try {
            Connection con = Conexao.Conecta();
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM tb_fornecedor ORDER BY id_fornecedor";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                ModeloFornecedor modeloFornecedor = new ModeloFornecedor();

                modeloFornecedor.setId(rs.getInt("id_fornecedor"));
                modeloFornecedor.setCnpj(rs.getString("cnpj_fornecedor"));
                modeloFornecedor.setNome(rs.getString("nome_fornecedor"));
                modeloFornecedor.setEndereco(rs.getString("endereco_fornecedor"));
                modeloFornecedor.setNumero(rs.getString("numero_fornecedor"));
                modeloFornecedor.setEstado(rs.getString("estado_fornecedor"));
                modeloFornecedor.setCidade(rs.getString("cidade_fornecedor"));
                modeloFornecedor.setCep(rs.getString("cep_fornecedor"));
                modeloFornecedor.setTelefone(rs.getString("telefone_fornecedor"));

                lista.add(modeloFornecedor);
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

}
