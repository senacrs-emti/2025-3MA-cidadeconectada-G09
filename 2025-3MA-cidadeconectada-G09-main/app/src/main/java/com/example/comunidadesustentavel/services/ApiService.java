package com.example.comunidadesustentavel.services;

import android.content.Context;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.example.comunidadesustentavel.models.Comunidade;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

public class ApiService {
    private Context context;
    private RequestQueue requestQueue;

    public ApiService(Context context) {
        this.context = context;
        this.requestQueue = Volley.newRequestQueue(context);
    }

    public interface ComunidadesListener {
        void onSuccess(List<Comunidade> comunidades);
        void onError(String mensagem);
    }

    public void buscarComunidades(ComunidadesListener listener) {
        // SUBSTITUA PELA URL DA SUA API
        String url = "http://seuservidor.com/api/comunidades.php";

        JsonArrayRequest request = new JsonArrayRequest(
                Request.Method.GET,
                url,
                null,
                new Response.Listener<JSONArray>() {
                    @Override
                    public void onResponse(JSONArray response) {
                        try {
                            List<Comunidade> comunidades = new ArrayList<>();

                            for (int i = 0; i < response.length(); i++) {
                                JSONObject obj = response.getJSONObject(i);

                                Comunidade comunidade = new Comunidade(
                                        obj.getInt("id"),
                                        obj.getString("nome"),
                                        obj.getDouble("latitude"),
                                        obj.getDouble("longitude"),
                                        obj.getString("regiao"),
                                        obj.getString("data")
                                );

                                comunidades.add(comunidade);
                            }

                            listener.onSuccess(comunidades);

                        } catch (JSONException e) {
                            listener.onError("Erro ao processar dados");
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        listener.onError("Erro de conexão: " + error.getMessage());
                    }
                }
        );

        requestQueue.add(request);
    }
}