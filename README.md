# Efficient Computation of Frobenius Automorphism on BN254 Elliptic Curve using exponentiation by squaring technique

This sagemath program will explore an efficient method to compute the Frobenius automorphism for the BN254 elliptic curve. The BN254 curve is a pairing-friendly elliptic curve that is widely used in cryptographic applications [hackmd.io/@jpw](https://hackmd.io/@jpw/bn254). We will exploit the fact that $(p−1)/2$ is odd to compute the Frobenius automorphism efficiently.

# What is Frobenius Automorphism?

The Frobenius automorphism is an endomorphism that maps a point $(x,y)$ on an elliptic curve defined over a prime field $F_p$ to $(x^p,y^p)$. It is an important property of elliptic curves over finite fields and has various applications in cryptography [math.stackexchange.com](https://math.stackexchange.com/questions/4377341/explanation-of-frobenius-endomorphism-on-elliptic-curves).

You can read full implementation details in this blog post [github.io/thogiti](https://thogiti.github.io/efficient-computation-of-frobenius-automorphism-on-bn254-elliptic-curve/).
