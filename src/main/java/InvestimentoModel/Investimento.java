package InvestimentoModel;

public class Investimento {
	
	String cpf_c;
	
	String nome_c;
	
	float valor_investido_c;
	
	float taxa_c;
	
	int periodo_c;
	
	String ocorrencia_c;
	
	double valor_calculado_c;

	public String getCpf_c() {
		return cpf_c;
	}

	public void setCpf_c(String cpf_c) {
		this.cpf_c = cpf_c;
	}

	public String getNome_c() {
		return nome_c;
	}

	public void setNome_c(String nome_c) {
		this.nome_c = nome_c;
	}

	public float getValor_investido_c() {
		return valor_investido_c;
	}

	public void setValor_investido_c(float valor) {
		this.valor_investido_c = (float) valor;
	}

	public float getTaxa_c() {
		return taxa_c;
	}

	public void setTaxa_c(float taxa_c) {
		this.taxa_c = taxa_c;
	}

	public int getPeriodo_c() {
		return periodo_c;
	}

	public void setPeriodo_c(int periodo_c) {
		this.periodo_c = periodo_c;
	}

	public String getOcorrencia_c() {
		return ocorrencia_c;
	}

	public void setOcorrencia_c(String ocorrencia_c) {
		this.ocorrencia_c = ocorrencia_c;
	}

	public double getValor_calculado_c() {
		return valor_calculado_c;
	}

	public void setValor_calculado_c(double valor_calculado_c) {
		this.valor_calculado_c = valor_calculado_c;
	}
	
	
}
