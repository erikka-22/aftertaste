public class DrawWave {
    Minim minim;  //Minim型変数であるminimの宣言
    AudioInput in;  //マイク入力用の変数
    int waveH = 100;  //波形の高さ

    DrawWave() {
        minim = new Minim(getPApplet());
        in = minim.getLineIn(Minim.MONO, 600);
    }

    public void displayWave() {
        for (int i = 0; i < in.bufferSize() - 1; i++) {
            point(i, 250 + in.left.get(i) * waveH);
        }
    } 
}