int var_M = 3;
int var_L = 2;
int var_G = 1;
int var_A = 0;
int mutex_PonerLetra = 1; 

void funcionM(){
    wait(var_M);
    wait(var_M);
    wait(var_M);
    wait(mutex_PonerLetra);
    poner('M');
    signal(mutex_PonerLetra);
    signal(var_A);
}

void funcionA(){
    wait(var_A);
    wait(mutex_PonerLetra);
    poner('a');
    signal(mutex_PonerLetra);
    signal(var_M);
    signal(var_L);
    signal(var_G);
}

void funcionL(){
    wait(var_L);
    wait(var_L);
    wait(var_L);
    wait(mutex_PonerLetra);
    poner('l');
    signal(mutex_PonerLetra);
    signal(var_A);
}

void funcionG(){
    wait(var_G);
    wait(var_G);
    wait(var_G);
    wait(mutex_PonerLetra);
    poner('g');
    signal(mutex_PonerLetra);
    signal(var_A);
}

int var_M = 1;
int var_Mlg = 1;
int var_L = 0;
int var_G = 0;
int var_A = 0;
int mutex_PonerLetra = 1; 

void funcionM(){
    wait(var_M);
    wait(var_Mlg);
    wait(mutex_PonerLetra);
    poner('M');
    signal(mutex_PonerLetra);
    signal(var_A);
    signal(var_L);
}

void funcionA(){
    wait(var_A);
    wait(mutex_PonerLetra);
    poner('a');
    signal(mutex_PonerLetra);
    signal(var_Mlg);
}

void funcionL(){
    wait(var_L);
    wait(mutex_PonerLetra);
    poner('l');
    signal(mutex_PonerLetra);
    signal(var_A);
}

void funcionG(){
    wait(var_G);
    wait(mutex_PonerLetra);
    poner('g');
    signal(mutex_PonerLetra);
    signal(var_A);
}