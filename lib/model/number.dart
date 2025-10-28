class NumberModel {
  int num1;
  int num2;

  NumberModel({required this.num1, required this.num2});

  int mcd(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  int prime() {
    return mcd(num1, num2) == 1 ? 1 : 0;
  }
}
