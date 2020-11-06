package models;

// essa classe será responsável pelo CRUD
import beans.Aluno;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBConnection;

public class AlunoModel implements Serializable {

    // declarando os atributos principais
    private Connection conexao = null;

    // método construtor
    // toda vez que a classe AlunoModel for instanciada,
    // o construtor fará automaticamente a conexão com o banco
    public AlunoModel() throws SQLException {
        this.conexao = DBConnection.getInstance().getConnection();
    }

    // implementar os métodos do CRUD
    // método inserir - Create (insert)
    public void inserir(Aluno aluno) {
    }

    // métodos de listar e pesquisar (Read - select)
    public List<Aluno> listar() {
        // variável para receber a lista de alunos originadas do banco
        List<Aluno> alunos = new ArrayList();

        // tratamento de erros
        try {
            String sql = "SELECT * FROM alunos ORDER BY nome ASC;";
            try (
                    //preparar os dados (consulta ou query)
                    // e envia para o banco de dados
                    PreparedStatement ps = conexao.prepareStatement(sql);
                    // declarar uma variável para RECEBER os dados (vetor)
                    ResultSet rs = ps.executeQuery()) { // Cursor do Android

                // vamos percorrer (laço) os registros retornados (se houver)
                // para transformar os dados TABULARES (Relacional) em objetos
                while (rs.next()) { //enquanto houver próximo
                    Aluno aluno = new Aluno();
                    aluno.setId(rs.getInt("id"));
                    aluno.setRa(rs.getString("ra"));
                    aluno.setNome(rs.getString("nome"));
                    aluno.setCurso(rs.getString("curso"));

                    // colocar o objeto que foi "populado ou alimentado"
                    // na nossa lista de alunos (List<Aluno>)
                    alunos.add(aluno);
                }
                // fechamento das instâncias rs e ps
                rs.close();
                ps.close();
            }
            // vamos retornar a lista de objetos
            return alunos;

        } catch (SQLException ex) {
            throw new RuntimeException("falha ao listar.", ex);
        }
    }

    public List<Aluno> pesquisar(Aluno aluno) {
        return null;
    }

    // método para atualizar um registro (Update - update)
    public void atualizar(Aluno aluno) {
    }

    // método para excluir um registro (Delete - delete)
    public void excluir(Aluno aluno) {
    }
}
