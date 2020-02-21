package az.employee.repository.jdbc;

import az.employee.domain.Token;
import az.employee.repository.TokenRepository;
import az.employee.repository.jdbc.mapper.TokenRowMapper;
import az.employee.repository.jdbc.sql.UserQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class TokenRepositoryJdbcImpl implements TokenRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    TokenRowMapper tokenRowMapper;

    @Override
    public Token saveToken(Token token) {

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("token",token.getValue());
        params.addValue("generation_date",token.getGenerationDate());
        params.addValue("expire_date",token.getExpireDate());
        params.addValue("user_id",token.getUser().getId());
        int count = jdbcTemplate.update(UserQueries.ADD_TOKEN,params);

        if (count > 0) {
            System.out.println("token added ");
        }else {
            throw new RuntimeException("token not added = " +token);
        }
        return token;
    }

    @Override
    public Optional<Token> getToken(String token) {
        Optional<Token> optionalToken = Optional.empty();
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("token",token);
        List<Token> tokenList = jdbcTemplate.query(UserQueries.GET_TOKEN,params,tokenRowMapper);
        if (!tokenList.isEmpty()) {
            optionalToken = Optional.of(tokenList.get(0));
        }
        return optionalToken;
    }
}
