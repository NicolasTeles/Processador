----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nicolas Teles e Miguel de Assis
-- 
-- Create Date:    14:19:21 08/28/2024 
-- Design Name: 
-- Module Name:    Processador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Processador is
	port( DebugEndereco : in  std_logic_vector(31 downto 0);
         DebugPalavra : out  std_logic_vector(31 downto 0);
         Clock : in  std_logic;
         Inicializar : in  std_logic	
	);
end Processador;

architecture Behavioral of Processador is
	
	component ProgramCounter is
		port( Entrada : in std_logic_vector(31 downto 0);
				enable, clk, reset: in std_logic;
				saida: out std_logic_vector(31 downto 0)
		
		);
	end component;
	
	signal sinalPC : std_logic_vector(31 downto 0);
	
	component somador32bits is
		port( A, B : in std_logic_vector(31 downto 0);
				Soma : out std_logic_vector(31 downto 0)
			
		);
	end component;
	
	component somadorPc is
		port( PC : in std_logic_vector(31 downto 0);
				saida : out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal sinalPC4 : std_logic_vector(31 downto 0);
	
	signal enderecoImediatoExtendido : std_logic_vector(31 downto 0);
	signal enderecoJumpSlice : std_logic_vector(25 downto 0);
	signal pulaEndereco : std_logic_vector(31 downto 0);
	signal sinalBranch : std_logic_vector(31 downto 0);
	signal saidaMuxBranch : std_logic_vector(31 downto 0);
	signal saidaMuxJump : std_logic_vector(31 downto 0);
	
	component memInstrucoes is
		port (
			Endereco : in std_logic_vector(31 downto 0);
			Palavra : out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal sinalInstrucao : std_logic_vector(31 downto 0);
	
	component mux2_5 is
		port (e0  : in std_logic_vector(4 downto 0);
				e1  : in std_logic_vector(4 downto 0);
				sel : in std_logic;
				saida : out std_logic_vector(4 downto 0)
		);
	end component;
	
	signal sinalmuxReg : std_logic_vector(4 downto 0);
	
	component BancoReg is
		port( e : in std_logic_vector(4 downto 0);
				DadoEscrita : in std_logic_vector(0 to 31);
				RegWrite, clk : in std_logic;
				saida1 : out std_logic_vector(31 downto 0);
				saida2 : out std_logic_vector(31 downto 0);
				selecao1 : in std_logic_vector(4 downto 0);
				selecao2 : in std_logic_vector(4 downto 0)
		);
	end component;
	
	signal saida1BancoReg : std_logic_vector(31 downto 0);
	signal saida2BancoReg : std_logic_vector(31 downto 0);
	
	component UC is
		port( opCode : in std_logic_vector(5 downto 0);
				aluOp : out std_logic_vector(1 downto 0);
				regWrite : out std_logic;
				regDst : out std_logic;
				aluScr : out std_logic;
				branch : out std_logic;
				memWrite : out std_logic;
				memToReg : out std_logic;
				jump : out std_logic;
				memRead : out std_logic
		);
	end component;
	
	signal   aluOp : std_logic_vector(1 downto 0);
	signal	regWrite : std_logic;
	signal	regDst : std_logic;
	signal	aluScr : std_logic;
	signal	branch : std_logic;
	signal	memWrite : std_logic;
	signal	memToReg : std_logic;
	signal	jump : std_logic;
	signal	memRead : std_logic;
	
	component UC_ULA is
		port( aluOp : in std_logic_vector(1 downto 0);
				funct : in std_logic_vector(5 downto 0);
				AInverte : out std_logic; 
				BInverte : out std_logic;
				operacao : out std_logic_vector(1 downto 0);
				primeiroVem1 : out std_logic
		);
	end component;
	
	signal AInverte : std_logic; 
	signal BInverte : std_logic;
	signal operacao : std_logic_vector(1 downto 0);
	signal primeiroVem1 : std_logic;
	signal Operando2 : std_logic_vector(31 downto 0);
	signal imediato : std_logic_vector(15 downto 0);
	signal imediatoExtendido : std_logic_vector(31 downto 0);

	component Ula_completa is
		port(a, b: in std_logic_vector(31 downto 0);
				Op : in std_logic_vector(1 downto 0);
				aNegate, bNegate : in std_logic;
				Result : out std_logic_vector(31 downto 0);
				zero : out std_logic
		);
	end component;
	
	signal sinalULA : std_logic_vector(31 downto 0);
	signal sinalAndZero : std_logic;
	
	signal branchAndZero : std_logic;
	
	component memDados is
		port (
			DadoLido : out std_logic_vector (31 downto 0);
			DadoEscrita : in std_logic_vector (31 downto 0);
			Endereco : in std_logic_vector (31 downto 0);
			EscreverMem : in std_logic;
			Clock : in std_logic;
			LerMem : in std_logic;
			DebugEndereco : in std_logic_vector(31 downto 0);
			DebugPalavra : out std_logic_vector(31 downto 0));
	end component;
	
	signal DadoLido : std_logic_vector(31 downto 0);
	
	component mux2_32down is
		port (e0  : in std_logic_vector(31 downto 0);
				e1  : in std_logic_vector(31 downto 0);
				sel : in std_logic;
				saida : out std_logic_vector(0 to 31)
		);
		
	end component;
	
	signal Resultado_muxValor : std_logic_vector(31 downto 0);
	
	
begin
	pc : ProgramCounter port map(
		Entrada => saidaMuxJump,
		enable => '1',
		clk => Clock,
		reset => Inicializar,
		saida => sinalPC
	);
	
	memoriaInstrucoes : memInstrucoes port map(
		Endereco => sinalPC4,
		Palavra => sinalInstrucao
	);
	
	imediato <= sinalInstrucao(15 downto 0);
	
	extendeSinal : for i in 31 downto 16 generate
		imediatoExtendido(i) <= imediato(15);
	end generate;
	imediatoExtendido(15 downto 0) <= imediato;
	
	muxReg : mux2_5 port map(
		e0 => sinalInstrucao(20 downto 16),
		e1 => sinalInstrucao(15 downto 11),
		sel => RegDst,
		saida => sinalmuxReg
	);
	
	BancoRegistradores : BancoReg port map(
		e => sinalmuxReg,
		DadoEscrita => Resultado_muxValor,
		RegWrite => regWrite,
		clk => Clock,
		saida1 => saida1BancoReg,
		saida2 => saida2BancoReg,
		selecao1 => sinalInstrucao(25 downto 21),
		selecao2 => sinalInstrucao(20 downto 16)
	);
	
	UnidadeControl : UC port map( 
		opCode => sinalInstrucao(31 downto 26),
		aluOp => aluOp,
		regWrite => regWrite,
		regDst => regDst,
		aluScr => aluScr,
		branch => branch,
		memWrite => memWrite,
		memToReg => memToReg,
		jump => jump,
		memRead => memRead
	);
	
	MuxUla : mux2_32down port map(
		e0 => saida2BancoReg,
		e1 => imediatoExtendido,
		sel => aluScr,
		saida => Operando2
	);
	
	ControleUla : UC_ULA port map( 
		aluOp => aluOp,
		funct => sinalInstrucao(5 downto 0),
		AInverte => AInverte, 
		BInverte => BInverte,
		operacao => operacao,
		primeiroVem1 => primeiroVem1
	);
	
	ULA : Ula_completa port map(
		a => saida1BancoReg,
		b => Operando2,
		Op => operacao,
		aNegate => AInverte, 
		bNegate => BInverte,
		Result => sinalULA,
		zero => sinalAndZero
	);
	
	--DebugPalavra <= saida1BancoReg;
	
	memoriaDados : memDados port map(
		DadoLido => DadoLido,
		DadoEscrita => saida2BancoReg,
		Endereco => sinalUla,
		EscreverMem => memWrite,
		Clock => Clock,
		LerMem => memRead,
		DebugEndereco => DebugEndereco,
		DebugPalavra => DebugPalavra
	);
	
	
	MuxValor : mux2_32down port map(
		e0 => sinalUla,
		e1 => DadoLido,
		sel => memToReg,
		saida => Resultado_muxValor
	
	);
	
	
	--- Parte de Branch
	
	somador_pc : somadorPC port map(
		PC => sinalPC,
		saida => sinalPC4
	);
	
	enderecoJumpSlice <= sinalInstrucao(25 downto 0);
	pulaEndereco(27 downto 2) <= enderecoJumpSlice;
	pulaEndereco(1 downto 0) <= "00";
	pulaEndereco(31 downto 28) <= sinalPC4(31 downto 28);
	
	enderecoImediatoExtendido(31 downto 2) <= imediatoExtendido(29 downto 0);
	enderecoImediatoExtendido(1 downto 0) <= "00";
	
	
	somadorJump : somador32bits port map(
		A => sinalPC4,
		B => enderecoImediatoExtendido,
		Soma => sinalBranch
	);
	
	branchAndZero <= branch and sinalAndZero;
	
	muxBranch : mux2_32down port map(
		e0 => sinalPC4,
		e1 => sinalBranch,
		sel => branchAndZero,
		saida => saidaMuxBranch
	);
		
	muxJump : mux2_32down port map(
		e0 => saidaMuxBranch,
		e1 => enderecoImediatoExtendido,
		sel => jump,
		saida => saidaMuxJump
	);

end Behavioral;

