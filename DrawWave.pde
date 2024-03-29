public class DrawWave {
    Minim minim;  //Minim型変数であるminimの宣言
    AudioInput in;  //マイク入力用の変数
    int waveH = 150;  //波形の高さ

    DrawWave() {
        minim = new Minim(getPApplet());
        in = minim.getLineIn(Minim.MONO, 900);
    }

    public void displayWave() {
        push();
        stroke(0, 0, 0);
        strokeWeight(4);
        for (int i = 0; i < in.bufferSize() * 2 / 3 ; i++) {
            push();
            stroke(0);
            point(width * 0.025 + i * 2, height * 0.8 + in.left.get(i) * waveH);
            pop();
        }
        pop();
    } 
}