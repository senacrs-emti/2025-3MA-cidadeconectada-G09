// Top-level build file where you can add configuration options common to all sub-projects/modules.
plugins {
    dependencies {
        implementation 'com.android.volley:volley:1.2.1'
        "implementation 'com.google.android.gms:play-services-maps:18.1.0'"
        implementation 'androidx.recyclerview:recyclerview:1.3.1'
        implementation 'com.google.android.material:material:1.9.0'
        implementation 'androidx.cardview:cardview:1.0.0'

        // Se quiser usar Retrofit (mais moderno)
        // implementation 'com.squareup.retrofit2:retrofit:2.9.0'
        // implementation 'com.squareup.retrofit2:converter-gson:2.9.0'
    }

}