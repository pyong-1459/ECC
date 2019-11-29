# ECC
# matlab code for elliptic curve cryptography

ECC_sect233k1 : main code.

# Polynomial basis code

  gf_mul : galois multiplication unit in polynomial basis.
  
  gf_div : division in galois field, including inverse operation.
  
  pnt_add_proj_LD_norm : ecc point adding operation code.
  
  pnt_double_proj_LD_norm : ecc point doubling operation code.
  
# Normal basis code

  gf_mul_norm : multiplication in normal basis.
  
  gf_inv_norm : inverse.
  
  gf_sqr_norm : square operation, out = in^2.
  
  pnt_add_proj_LD_norm : ecc point adding operation code.
  
  pnt_double_proj_LD_norm : ecc point doubling operation code.
  
# other code

  poly2hex : convert polynomial vector to hexadecimal text.
