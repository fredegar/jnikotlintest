class NativeSample {
  init {
    System.loadLibrary("Hello")
  }
  external fun sayHello()
}