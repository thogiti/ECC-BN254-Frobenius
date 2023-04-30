# BN254 curve is a pairing-friendly curve defined over a prime field Fp, where p is a 254-bit prime. 
# The curve equation is y2=x3+b, where b is a curve constant.

# Define the prime p and the curve constant b
p = 16798108731015832284940804142231733909889187121439069848933715426072753864723
b = 3

# Construct the elliptic curve E over F_p
F_p = GF(p)
E = EllipticCurve(F_p, [0, b])

# Define the Frobenius automorphism for the elliptic curve using the property of the prime field and the exponentiation by squaring technique
def exponentiation_by_squaring(x, n, mod):
    result = 1
    while n > 0:
        if n % 2 == 1:
            result = (result * x) % mod
        x = (x * x) % mod
        n //= 2
    return result

def frobenius_on_curve_efficient(P):
    x, y = P.xy()
    x_frob = exponentiation_by_squaring(x, p, p)
    y_frob = exponentiation_by_squaring(y, p, p)
    return E.point([x_frob, y_frob])

# Apply the Frobenius automorphism to a point on the curve
P = E.random_point()
frob_P_efficient = frobenius_on_curve_efficient(P)

print(f"Point P: {P}")
print(f"Frobenius(P) (efficient): {frob_P_efficient}")
