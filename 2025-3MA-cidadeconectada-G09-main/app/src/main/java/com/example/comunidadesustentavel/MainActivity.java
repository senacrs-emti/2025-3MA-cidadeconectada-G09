
package com.example.comunidadesustentavel;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.example.comunidadesustentavel.services.ApiService;
import com.example.comunidadesustentavel.models.Comunidade;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private Button btnTestarConexao, btnLista, btnMapa, btnCadastrar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Configurar botões
        btnTestarConexao = findViewById(R.id.btnTestarConexao);
        btnLista = findViewById(R.id.btnLista);
        btnMapa = findViewById(R.id.btnMapa);
        btnCadastrar = findViewById(R.id.btnCadastrar);

        // Testar conexão com API
        btnTestarConexao.setOnClickListener(v -> testarConexao());

        // Navegação para outras telas
        btnLista.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity.this, ListaComunidadesActivity.class);
            startActivity(intent);
        });
    }

    private void testarConexao() {
        ApiService apiService = new ApiService(this);

        apiService.buscarComunidades(new ApiService.ComunidadesListener() {
            @Override
            public void onSuccess(List<Comunidade> comunidades) {
                Toast.makeText(MainActivity.this,
                        "Sucesso! " + comunidades.size() + " comunidades carregadas",
                        Toast.LENGTH_LONG).show();
            }

            @Override
            public void onError(String mensagem) {
                Toast.makeText(MainActivity.this,
                        "Erro: " + mensagem,
                        Toast.LENGTH_LONG).show();
            }
        });
    }
}