package InvestimentoModel;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class InvRepository {
	
	Connection conn;
	
	public InvRepository() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String usuario="root";
			String senha="djd12123";
			String url = "jdbc:mysql://localhost/financeiro";
	        conn = DriverManager.getConnection(url, usuario, senha);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	// Função grava no banco
	public String GravaInvestimento(Investimento i) {
		try {
			String sql = "insert into "+" investimento (nome, cpf, valor_investido, taxa, periodo, ocorrencia, valor_calculado)"
			+ "values(?,?,?,?,?,?,?)";
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(sql);
			comando.setString(1, i.getNome_c());
			comando.setString(2, i.getCpf_c());
			comando.setFloat(3, i.getValor_investido_c());
			comando.setFloat(4, i.getTaxa_c());
			comando.setInt(5, i.getPeriodo_c());
			comando.setString(6, i.getOcorrencia_c());
			comando.setDouble(7, i.getValor_calculado_c());
			comando.execute();
			comando.close();
			conn.close();
			return "Simulação gravada com sucesso!";
		} catch (Exception e) {
			System.out.println(e);
			return "erro";
		}
	}
	
	//função listar investimentos
	public ArrayList<Investimento>ListarInvestimentos() throws Exception{
		String sql = "select * from investimento";
		PreparedStatement comando = (PreparedStatement) conn.prepareStatement(sql);
		ResultSet resultado = comando.executeQuery();
		ArrayList<Investimento> lista = new ArrayList<>();
		while(resultado.next()) {
			Investimento i = new Investimento();
			i.setNome_c(resultado.getString("nome"));
			i.setCpf_c(resultado.getString("cpf"));
			i.setValor_investido_c(resultado.getFloat("valor_investido"));
			i.setTaxa_c(resultado.getFloat("taxa"));
			i.setPeriodo_c(resultado.getInt("periodo"));
			i.setOcorrencia_c(resultado.getString("ocorrencia"));
			i.setValor_calculado_c(resultado.getDouble("valor_calculado"));
			lista.add(i);
		}
		return lista;
	}
	
	
}