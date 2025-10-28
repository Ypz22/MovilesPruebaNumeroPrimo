class NumberModel {
  int num1;
  int num2;

  NumberModel({required this.num1, required this.num2});

  int mcd(int a, int b) {
    int min = a < b ? a : b;
    for (int i = min; i >= 1; i--) {
      if (a % i == 0 && b % i == 0) return i;
    }
    return 1;
  }

  int prime() {
    return mcd(num1, num2) == 1 ? 1 : 0;
  }
}
