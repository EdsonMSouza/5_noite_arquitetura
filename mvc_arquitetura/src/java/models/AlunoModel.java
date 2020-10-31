package models;

// essa classe será responsável pelo CRUD
import beans.Aluno;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.SQLException;
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
        return null;
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
