package controle;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.ModeloProduto;

public class ControleProduto {

    //Cadastro  OK[x] Desenvolvimento[]
    public void Cadastrar(ModeloProduto modeloProduto) {
        try {
            //Abertura de Conexão
            Connection con = Conexao.Conecta();
            String sql = "INSERT INTO tb_produto(id_fornecedor, nome_produto, tipo_produto, dosagem_produto, codBarras_produtos, dt_fabricacao, dt_validade, quantidade_produto, valor_produto) VALUES(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, modeloProduto.getCodigoFornecedor());
            pst.setString(2, modeloProduto.getNome());
            pst.setString(3, modeloProduto.getTipo());
            pst.setString(4, modeloProduto.getDosagem());
            pst.setString(5, modeloProduto.getCodigoBarras());
            pst.setString(6, modeloProduto.getDataFabricacao());
            pst.setString(7, modeloProduto.getDataValidade());
            pst.setInt(8, modeloProduto.getQuantidade());
            pst.setString(9, modeloProduto.getValor());
            pst.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Alterar
    public void Alterar(ModeloProduto modeloProduto) {
        try {
            Connection con = Conexao.Conecta();
            String sql = "UPDATE tb_produto SET id_fornecedor = ?, nome_produto = ?, tipo_produto = ?, dosagem_produto = ?, codBarras_produtos = ?, dt_fabricacao = ?, dt_validade = ?, quantidade_produto = ?, valor_produto = ? WHERE id_produto = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, modeloProduto.getCodigoFornecedor());
            pst.setString(2, modeloProduto.getNome());
            pst.setString(3, modeloProduto.getTipo());
            pst.setString(4, modeloProduto.getDosagem());
            pst.setString(5, modeloProduto.getCodigoBarras());
            pst.setString(6, modeloProduto.getDataFabricacao());
            pst.setString(7, modeloProduto.getDataValidade());
            pst.setInt(8, modeloProduto.getQuantidade());
            pst.setString(9, modeloProduto.getValor());
            pst.setInt(10, modeloProduto.getCodigoProduto());
            pst.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Excluir
    public void Excluir(int id_produto) {
        try {
            Connection con = Conexao.Conecta();
            String sql = "DELETE FROM tb_produto WHERE id_produto = " + id_produto;
            Statement st = con.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //select
    public ArrayList<ModeloProduto> getProduto() {
        ArrayList<ModeloProduto> lista = new ArrayList<ModeloProduto>();
        try {
            Connection con = Conexao.Conecta();
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM tb_produto ORDER BY id_produto";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                ModeloProduto modeloProduto = new ModeloProduto();

                modeloProduto.setCodigoProduto(rs.getInt("id_produto"));
                modeloProduto.setCodigoFornecedor(rs.getInt("id_fornecedor"));
                modeloProduto.setNome(rs.getString("nome_produto"));
                modeloProduto.setTipo(rs.getString("tipo_produto"));
                modeloProduto.setDosagem(rs.getString("dosagem_produto"));
                modeloProduto.setCodigoBarras(rs.getString("codBarras_produtos"));
                modeloProduto.setDataFabricacao(rs.getString("dt_fabricacao"));
                modeloProduto.setDataValidade(rs.getString("dt_validade"));
                modeloProduto.setQuantidade(rs.getInt("quantidade_produto"));
                modeloProduto.setValor(rs.getString("valor_produto"));
                lista.add(modeloProduto);
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
