class Solution {
  int countPrimes(int n) {
    if (n <= 2) return 0;
    int count = 0;
    for (int i = 2; i < n; i++) {
        if (isPrime(i)) {
        count++;
    }
  }
    return count;
    
  }
  bool isPrime(int num) {
    if (num < 2) return false;
    if (num == 2) return true;
    if (num % 2 == 0) return false;
  
    for (int i = 3; i * i <= num; i += 2) {
      if (num % i == 0) return false;
    }
  return true;
}

}