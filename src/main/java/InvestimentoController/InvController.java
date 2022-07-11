package InvestimentoController;

import java.util.ArrayList;

import InvestimentoModel.InvRepository;
import InvestimentoModel.Investimento;

public class InvController {
	
	InvRepository ir = new InvRepository();
	
	public String GravarInvestimentoController(String nome, String cpf, float valor, float taxa, int periodo, String ocorrencia ) throws Exception {
		Investimento i= new Investimento();
		i.setNome_c(nome);
		i.setCpf_c(cpf);
		i.setValor_investido_c(valor);
		i.setTaxa_c(taxa);
		i.setPeriodo_c(periodo);
		i.setOcorrencia_c(ocorrencia);
		
		CalculaInvestimentoController(i);
		return ir.GravaInvestimento(i);
	}
	
	public void CalculaInvestimentoController(Investimento i){
		i.setValor_calculado_c(i.getValor_investido_c() * Math.pow(1 + i.getTaxa_c(), i.getPeriodo_c()) );
	}
	
	public ArrayList<Investimento>listarInvestimentoController() throws Exception{
		return ir.ListarInvestimentos();
	}
}
