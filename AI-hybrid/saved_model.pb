©"
Ù®
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8

conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:@*
dtype0

batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_5/gamma

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:@*
dtype0

batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_5/beta

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:@*
dtype0

!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_5/moving_mean

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:@*
dtype0
¢
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_5/moving_variance

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:@*
dtype0

conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:@*
dtype0

conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_29/kernel
~
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*'
_output_shapes
:@*
dtype0
u
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_29/bias
n
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes	
:*
dtype0

batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_6/gamma

/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:*
dtype0

batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_6/beta

.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:*
dtype0

!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/moving_mean

5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_6/moving_variance

9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:*
dtype0

conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_30/kernel

$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*(
_output_shapes
:*
dtype0
u
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_30/bias
n
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes	
:*
dtype0

conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_31/kernel

$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*(
_output_shapes
:*
dtype0
u
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_31/bias
n
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes	
:*
dtype0

conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_32/kernel
~
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*'
_output_shapes
:@*
dtype0
t
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:@*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:@ *
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
: *
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	 * 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:	 *
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:  *
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
: *
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

: *
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_27/kernel/m

+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
:@*
dtype0

Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_5/gamma/m

6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_5/beta/m

5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes
:@*
dtype0

Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_28/kernel/m

+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/m
{
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_29/kernel/m

+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_29/bias/m
|
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_6/gamma/m

6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_6/beta/m

5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes	
:*
dtype0

Adam/conv2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_30/kernel/m

+Adam/conv2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_30/bias/m
|
)Adam/conv2d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_31/kernel/m

+Adam/conv2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_31/bias/m
|
)Adam/conv2d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_32/kernel/m

+Adam/conv2d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_32/bias/m
{
)Adam/conv2d_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_22/kernel/m

*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
: *
dtype0

Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	 *'
shared_nameAdam/dense_23/kernel/m

*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:	 *
dtype0

Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
: *
dtype0

Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_24/kernel/m

*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
: *
dtype0

Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_25/kernel/m

*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_27/kernel/v

+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
:@*
dtype0

Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_5/gamma/v

6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_5/beta/v

5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes
:@*
dtype0

Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_28/kernel/v

+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/v
{
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_29/kernel/v

+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_29/bias/v
|
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_6/gamma/v

6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_6/beta/v

5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes	
:*
dtype0

Adam/conv2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_30/kernel/v

+Adam/conv2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_30/bias/v
|
)Adam/conv2d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_31/kernel/v

+Adam/conv2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_31/bias/v
|
)Adam/conv2d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_32/kernel/v

+Adam/conv2d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_32/bias/v
{
)Adam/conv2d_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_22/kernel/v

*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
: *
dtype0

Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	 *'
shared_nameAdam/dense_23/kernel/v

*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:	 *
dtype0

Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
: *
dtype0

Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_24/kernel/v

*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
: *
dtype0

Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_25/kernel/v

*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ò 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* 
value Bý Bõ
ä
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer_with_weights-9
layer-22
layer-23
layer_with_weights-10
layer-24
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
h

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api

&axis
	'gamma
(beta
)moving_mean
*moving_variance
+regularization_losses
,	variables
-trainable_variables
.	keras_api
h

/kernel
0bias
1regularization_losses
2	variables
3trainable_variables
4	keras_api
R
5regularization_losses
6	variables
7trainable_variables
8	keras_api
R
9regularization_losses
:	variables
;trainable_variables
<	keras_api
h

=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api

Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
R
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
R
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
R
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
h

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
R
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
R
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
R
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
h

pkernel
qbias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
R
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
R
zregularization_losses
{	variables
|trainable_variables
}	keras_api
T
~regularization_losses
	variables
trainable_variables
	keras_api
 
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
V
regularization_losses
	variables
trainable_variables
	keras_api
Ä
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
regularization_losses
	variables
trainable_variables
	keras_api
µ
	iter
beta_1
beta_2

decay
learning_rate mÊ!mË'mÌ(mÍ/mÎ0mÏ=mÐ>mÑDmÒEmÓLmÔMmÕ^mÖ_m×pmØqmÙ	mÚ	mÛ	mÜ	mÝ	mÞ	 mß	¡mà	¢má vâ!vã'vä(vå/væ0vç=vè>véDvêEvëLvìMví^vî_vïpvðqvñ	vò	vó	vô	võ	vö	 v÷	¡vø	¢vù
 
Þ
 0
!1
'2
(3
)4
*5
/6
07
=8
>9
D10
E11
F12
G13
L14
M15
^16
_17
p18
q19
20
21
22
23
24
 25
¡26
¢27
¾
 0
!1
'2
(3
/4
05
=6
>7
D8
E9
L10
M11
^12
_13
p14
q15
16
17
18
19
20
 21
¡22
¢23
²
regularization_losses
 £layer_regularization_losses
¤layer_metrics
¥metrics
	variables
¦layers
§non_trainable_variables
trainable_variables
 
\Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
²
"regularization_losses
 ¨layer_regularization_losses
©layer_metrics
ªmetrics
#	variables
«layers
¬non_trainable_variables
$trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
)2
*3

'0
(1
²
+regularization_losses
 ­layer_regularization_losses
®layer_metrics
¯metrics
,	variables
°layers
±non_trainable_variables
-trainable_variables
\Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

/0
01

/0
01
²
1regularization_losses
 ²layer_regularization_losses
³layer_metrics
´metrics
2	variables
µlayers
¶non_trainable_variables
3trainable_variables
 
 
 
²
5regularization_losses
 ·layer_regularization_losses
¸layer_metrics
¹metrics
6	variables
ºlayers
»non_trainable_variables
7trainable_variables
 
 
 
²
9regularization_losses
 ¼layer_regularization_losses
½layer_metrics
¾metrics
:	variables
¿layers
Ànon_trainable_variables
;trainable_variables
\Z
VARIABLE_VALUEconv2d_29/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_29/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

=0
>1
²
?regularization_losses
 Álayer_regularization_losses
Âlayer_metrics
Ãmetrics
@	variables
Älayers
Ånon_trainable_variables
Atrainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1
F2
G3

D0
E1
²
Hregularization_losses
 Ælayer_regularization_losses
Çlayer_metrics
Èmetrics
I	variables
Élayers
Ênon_trainable_variables
Jtrainable_variables
\Z
VARIABLE_VALUEconv2d_30/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_30/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
²
Nregularization_losses
 Ëlayer_regularization_losses
Ìlayer_metrics
Ímetrics
O	variables
Îlayers
Ïnon_trainable_variables
Ptrainable_variables
 
 
 
²
Rregularization_losses
 Ðlayer_regularization_losses
Ñlayer_metrics
Òmetrics
S	variables
Ólayers
Ônon_trainable_variables
Ttrainable_variables
 
 
 
²
Vregularization_losses
 Õlayer_regularization_losses
Ölayer_metrics
×metrics
W	variables
Ølayers
Ùnon_trainable_variables
Xtrainable_variables
 
 
 
²
Zregularization_losses
 Úlayer_regularization_losses
Ûlayer_metrics
Ümetrics
[	variables
Ýlayers
Þnon_trainable_variables
\trainable_variables
\Z
VARIABLE_VALUEconv2d_31/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_31/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
²
`regularization_losses
 ßlayer_regularization_losses
àlayer_metrics
ámetrics
a	variables
âlayers
ãnon_trainable_variables
btrainable_variables
 
 
 
²
dregularization_losses
 älayer_regularization_losses
ålayer_metrics
æmetrics
e	variables
çlayers
ènon_trainable_variables
ftrainable_variables
 
 
 
²
hregularization_losses
 élayer_regularization_losses
êlayer_metrics
ëmetrics
i	variables
ìlayers
ínon_trainable_variables
jtrainable_variables
 
 
 
²
lregularization_losses
 îlayer_regularization_losses
ïlayer_metrics
ðmetrics
m	variables
ñlayers
ònon_trainable_variables
ntrainable_variables
\Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

p0
q1

p0
q1
²
rregularization_losses
 ólayer_regularization_losses
ôlayer_metrics
õmetrics
s	variables
ölayers
÷non_trainable_variables
ttrainable_variables
 
 
 
²
vregularization_losses
 ølayer_regularization_losses
ùlayer_metrics
úmetrics
w	variables
ûlayers
ünon_trainable_variables
xtrainable_variables
 
 
 
²
zregularization_losses
 ýlayer_regularization_losses
þlayer_metrics
ÿmetrics
{	variables
layers
non_trainable_variables
|trainable_variables
 
 
 
³
~regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
µ
regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
µ
regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
 
 
 
µ
regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
V
regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	 bias
regularization_losses
	variables
trainable_variables
	keras_api
V
regularization_losses
	variables
 trainable_variables
¡	keras_api
n
¡kernel
	¢bias
¢regularization_losses
£	variables
¤trainable_variables
¥	keras_api
 
 
0
 1
¡2
¢3
 
0
 1
¡2
¢3
µ
regularization_losses
 ¦layer_regularization_losses
§layer_metrics
¨metrics
	variables
©layers
ªnon_trainable_variables
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_24/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_24/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_25/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_25/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
 
 

«0
¬1
¾
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24

)0
*1
F2
G3
 
 
 
 
 
 
 
 
 

)0
*1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

F0
G1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
µ
regularization_losses
 ­layer_regularization_losses
®layer_metrics
¯metrics
	variables
°layers
±non_trainable_variables
trainable_variables
 

0
 1

0
 1
µ
regularization_losses
 ²layer_regularization_losses
³layer_metrics
´metrics
	variables
µlayers
¶non_trainable_variables
trainable_variables
 
 
 
µ
regularization_losses
 ·layer_regularization_losses
¸layer_metrics
¹metrics
	variables
ºlayers
»non_trainable_variables
 trainable_variables
 

¡0
¢1

¡0
¢1
µ
¢regularization_losses
 ¼layer_regularization_losses
½layer_metrics
¾metrics
£	variables
¿layers
Ànon_trainable_variables
¤trainable_variables
 
 
 
 
0
1
2
3
 
8

Átotal

Âcount
Ã	variables
Ä	keras_api
I

Åtotal

Æcount
Ç
_fn_kwargs
È	variables
É	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Á0
Â1

Ã	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Å0
Æ1

È	variables
}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_5/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_29/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_29/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_30/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_30/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_31/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_31/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_32/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_32/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_24/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_24/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_25/kernel/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_25/bias/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_5/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_29/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_29/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_30/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_30/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_31/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_31/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_32/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_32/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_24/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_24/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_25/kernel/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_25/bias/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv2d_27_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ00

serving_default_dense_23_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ	
ä
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_27_inputserving_default_dense_23_inputconv2d_27/kernelconv2d_27/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betaconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betaconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_32065
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOp$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp+Adam/conv2d_30/kernel/m/Read/ReadVariableOp)Adam/conv2d_30/bias/m/Read/ReadVariableOp+Adam/conv2d_31/kernel/m/Read/ReadVariableOp)Adam/conv2d_31/bias/m/Read/ReadVariableOp+Adam/conv2d_32/kernel/m/Read/ReadVariableOp)Adam/conv2d_32/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp+Adam/conv2d_30/kernel/v/Read/ReadVariableOp)Adam/conv2d_30/bias/v/Read/ReadVariableOp+Adam/conv2d_31/kernel/v/Read/ReadVariableOp)Adam/conv2d_31/bias/v/Read/ReadVariableOp+Adam/conv2d_32/kernel/v/Read/ReadVariableOp)Adam/conv2d_32/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOpConst*b
Tin[
Y2W	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_33544
í
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_27/kernelconv2d_27/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense_24/kerneldense_24/biasdense_25/kerneldense_25/biastotalcounttotal_1count_1Adam/conv2d_27/kernel/mAdam/conv2d_27/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/conv2d_30/kernel/mAdam/conv2d_30/bias/mAdam/conv2d_31/kernel/mAdam/conv2d_31/bias/mAdam/conv2d_32/kernel/mAdam/conv2d_32/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/conv2d_30/kernel/vAdam/conv2d_30/bias/vAdam/conv2d_31/kernel/vAdam/conv2d_31/bias/vAdam/conv2d_32/kernel/vAdam/conv2d_32/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/v*a
TinZ
X2V*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_33809
Ì
­
-__inference_sequential_19_layer_call_fn_30994
activation_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallactivation_22_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-
_user_specified_nameactivation_22_input
×

Ý
D__inference_conv2d_31_layer_call_and_return_conditional_losses_31379

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î

Ý
D__inference_conv2d_27_layer_call_and_return_conditional_losses_31010

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
¾
I
-__inference_activation_21_layer_call_fn_33005

inputs
identityÏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_314002
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
c
E__inference_dropout_24_layer_call_and_return_conditional_losses_31426

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

j
@__inference_add_6_layer_call_and_return_conditional_losses_31571

inputs
inputs_1
identityW
addAddV2inputsinputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò

Ý
D__inference_conv2d_32_layer_call_and_return_conditional_losses_33043

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
d
E__inference_dropout_25_layer_call_and_return_conditional_losses_33064

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¼
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2
dropout/GreaterEqual/yÆ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
í	
Ü
C__inference_dense_23_layer_call_and_return_conditional_losses_33121

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
¶
d
H__inference_activation_22_layer_call_and_return_conditional_losses_30844

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

Q
%__inference_add_6_layer_call_fn_33142
inputs_0
inputs_1
identityË
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_6_layer_call_and_return_conditional_losses_315712
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/1
ö

H__inference_sequential_19_layer_call_and_return_conditional_losses_30919
activation_22_input
dense_24_30873
dense_24_30875
dense_25_30913
dense_25_30915
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCallï
activation_22/PartitionedCallPartitionedCallactivation_22_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_308442
activation_22/PartitionedCall±
 dense_24/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_24_30873dense_24_30875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_308622"
 dense_24/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_308832
activation_23/PartitionedCall±
 dense_25/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_25_30913dense_25_30915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_309022"
 dense_25/StatefulPartitionedCallÃ
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:\ X
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-
_user_specified_nameactivation_22_input
è

P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32808

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1ö
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32892

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1ä
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
~
)__inference_conv2d_27_layer_call_fn_32515

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_310102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
×
¨
5__inference_batch_normalization_6_layer_call_fn_32905

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_312412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
¨
5__inference_batch_normalization_6_layer_call_fn_32918

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_312612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
d
E__inference_dropout_24_layer_call_and_return_conditional_losses_33017

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

I
-__inference_activation_22_layer_call_fn_33216

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_308442
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¥
 
-__inference_sequential_19_layer_call_fn_33193

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
è
c
E__inference_dropout_22_layer_call_and_return_conditional_losses_32720

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­
L
0__inference_max_pooling2d_25_layer_call_fn_30835

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_308292
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

Ý
D__inference_conv2d_30_layer_call_and_return_conditional_losses_32929

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
d
H__inference_activation_20_layer_call_and_return_conditional_losses_32943

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ü
C__inference_dense_24_layer_call_and_return_conditional_losses_33226

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾¥
¹$
__inference__traced_save_33544
file_prefix/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop6
2savev2_adam_conv2d_30_kernel_m_read_readvariableop4
0savev2_adam_conv2d_30_bias_m_read_readvariableop6
2savev2_adam_conv2d_31_kernel_m_read_readvariableop4
0savev2_adam_conv2d_31_bias_m_read_readvariableop6
2savev2_adam_conv2d_32_kernel_m_read_readvariableop4
0savev2_adam_conv2d_32_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop6
2savev2_adam_conv2d_30_kernel_v_read_readvariableop4
0savev2_adam_conv2d_30_bias_v_read_readvariableop6
2savev2_adam_conv2d_31_kernel_v_read_readvariableop4
0savev2_adam_conv2d_31_bias_v_read_readvariableop6
2savev2_adam_conv2d_32_kernel_v_read_readvariableop4
0savev2_adam_conv2d_32_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameä.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*ö-
valueì-Bé-VB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*Á
value·B´VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop2savev2_adam_conv2d_30_kernel_m_read_readvariableop0savev2_adam_conv2d_30_bias_m_read_readvariableop2savev2_adam_conv2d_31_kernel_m_read_readvariableop0savev2_adam_conv2d_31_bias_m_read_readvariableop2savev2_adam_conv2d_32_kernel_m_read_readvariableop0savev2_adam_conv2d_32_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop2savev2_adam_conv2d_30_kernel_v_read_readvariableop0savev2_adam_conv2d_30_bias_v_read_readvariableop2savev2_adam_conv2d_31_kernel_v_read_readvariableop0savev2_adam_conv2d_31_bias_v_read_readvariableop2savev2_adam_conv2d_32_kernel_v_read_readvariableop0savev2_adam_conv2d_32_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *d
dtypesZ
X2V	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: :@:@:@:@:@:@:@@:@:@::::::::::@:@:@ : :	 : : : : : : :  : : :: : : : :@:@:@:@:@@:@:@::::::::@:@:@ : :	 : :  : : ::@:@:@:@:@@:@:@::::::::@:@:@ : :	 : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-	)
'
_output_shapes
:@:!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

:	 : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :,&(
&
_output_shapes
:@: '

_output_shapes
:@: (

_output_shapes
:@: )

_output_shapes
:@:,*(
&
_output_shapes
:@@: +

_output_shapes
:@:-,)
'
_output_shapes
:@:!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::.0*
(
_output_shapes
::!1

_output_shapes	
::.2*
(
_output_shapes
::!3

_output_shapes	
::-4)
'
_output_shapes
:@: 5

_output_shapes
:@:$6 

_output_shapes

:@ : 7

_output_shapes
: :$8 

_output_shapes

:	 : 9

_output_shapes
: :$: 

_output_shapes

:  : ;

_output_shapes
: :$< 

_output_shapes

: : =

_output_shapes
::,>(
&
_output_shapes
:@: ?

_output_shapes
:@: @

_output_shapes
:@: A

_output_shapes
:@:,B(
&
_output_shapes
:@@: C

_output_shapes
:@:-D)
'
_output_shapes
:@:!E

_output_shapes	
::!F

_output_shapes	
::!G

_output_shapes	
::.H*
(
_output_shapes
::!I

_output_shapes	
::.J*
(
_output_shapes
::!K

_output_shapes	
::-L)
'
_output_shapes
:@: M

_output_shapes
:@:$N 

_output_shapes

:@ : O

_output_shapes
: :$P 

_output_shapes

:	 : Q

_output_shapes
: :$R 

_output_shapes

:  : S

_output_shapes
: :$T 

_output_shapes

: : U

_output_shapes
::V

_output_shapes
: 
Ó
£
'__inference_model_5_layer_call_fn_32495
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_5_layer_call_and_return_conditional_losses_319342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/1
5
Å
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_30755

inputs
assignmovingavg_30728
assignmovingavg_1_30735)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/30728*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/30728*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_30728*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/30728*
_output_shapes	
:2
AssignMovingAvg/subâ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/30728*
_output_shapes	
:2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_30728AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/30728*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/30735*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/30735*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_30735*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/30735*
_output_shapes	
:2
AssignMovingAvg_1/subì
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/30735*
_output_shapes	
:2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_30735AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/30735*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Î
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô

Ý
D__inference_conv2d_29_layer_call_and_return_conditional_losses_31188

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ö
°
'__inference_model_5_layer_call_fn_31847
conv2d_27_input
dense_23_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallconv2d_27_inputdense_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_5_layer_call_and_return_conditional_losses_317882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
)
_user_specified_nameconv2d_27_input:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_23_input
5
Å
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32637

inputs
assignmovingavg_32610
assignmovingavg_1_32617)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32610*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/32610*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_32610*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32610*
_output_shapes
:@2
AssignMovingAvg/subá
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32610*
_output_shapes
:@2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_32610AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32610*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32617*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/32617*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_32617*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32617*
_output_shapes
:@2
AssignMovingAvg_1/subë
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32617*
_output_shapes
:@2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_32617AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32617*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1Í
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

I
-__inference_activation_23_layer_call_fn_33245

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_308832
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ï
ý
H__inference_sequential_19_layer_call_and_return_conditional_losses_30954

inputs
dense_24_30942
dense_24_30944
dense_25_30948
dense_25_30950
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCallâ
activation_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_308442
activation_22/PartitionedCall±
 dense_24/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_24_30942dense_24_30944*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_308622"
 dense_24/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_308832
activation_23/PartitionedCall±
 dense_25/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_25_30948dense_25_30950*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_309022"
 dense_25/StatefulPartitionedCallÃ
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
´
F
*__inference_dropout_22_layer_call_fn_32730

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_22_layer_call_and_return_conditional_losses_311642
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
òä
ù-
!__inference__traced_restore_33809
file_prefix%
!assignvariableop_conv2d_27_kernel%
!assignvariableop_1_conv2d_27_bias2
.assignvariableop_2_batch_normalization_5_gamma1
-assignvariableop_3_batch_normalization_5_beta8
4assignvariableop_4_batch_normalization_5_moving_mean<
8assignvariableop_5_batch_normalization_5_moving_variance'
#assignvariableop_6_conv2d_28_kernel%
!assignvariableop_7_conv2d_28_bias'
#assignvariableop_8_conv2d_29_kernel%
!assignvariableop_9_conv2d_29_bias3
/assignvariableop_10_batch_normalization_6_gamma2
.assignvariableop_11_batch_normalization_6_beta9
5assignvariableop_12_batch_normalization_6_moving_mean=
9assignvariableop_13_batch_normalization_6_moving_variance(
$assignvariableop_14_conv2d_30_kernel&
"assignvariableop_15_conv2d_30_bias(
$assignvariableop_16_conv2d_31_kernel&
"assignvariableop_17_conv2d_31_bias(
$assignvariableop_18_conv2d_32_kernel&
"assignvariableop_19_conv2d_32_bias'
#assignvariableop_20_dense_22_kernel%
!assignvariableop_21_dense_22_bias'
#assignvariableop_22_dense_23_kernel%
!assignvariableop_23_dense_23_bias!
assignvariableop_24_adam_iter#
assignvariableop_25_adam_beta_1#
assignvariableop_26_adam_beta_2"
assignvariableop_27_adam_decay*
&assignvariableop_28_adam_learning_rate'
#assignvariableop_29_dense_24_kernel%
!assignvariableop_30_dense_24_bias'
#assignvariableop_31_dense_25_kernel%
!assignvariableop_32_dense_25_bias
assignvariableop_33_total
assignvariableop_34_count
assignvariableop_35_total_1
assignvariableop_36_count_1/
+assignvariableop_37_adam_conv2d_27_kernel_m-
)assignvariableop_38_adam_conv2d_27_bias_m:
6assignvariableop_39_adam_batch_normalization_5_gamma_m9
5assignvariableop_40_adam_batch_normalization_5_beta_m/
+assignvariableop_41_adam_conv2d_28_kernel_m-
)assignvariableop_42_adam_conv2d_28_bias_m/
+assignvariableop_43_adam_conv2d_29_kernel_m-
)assignvariableop_44_adam_conv2d_29_bias_m:
6assignvariableop_45_adam_batch_normalization_6_gamma_m9
5assignvariableop_46_adam_batch_normalization_6_beta_m/
+assignvariableop_47_adam_conv2d_30_kernel_m-
)assignvariableop_48_adam_conv2d_30_bias_m/
+assignvariableop_49_adam_conv2d_31_kernel_m-
)assignvariableop_50_adam_conv2d_31_bias_m/
+assignvariableop_51_adam_conv2d_32_kernel_m-
)assignvariableop_52_adam_conv2d_32_bias_m.
*assignvariableop_53_adam_dense_22_kernel_m,
(assignvariableop_54_adam_dense_22_bias_m.
*assignvariableop_55_adam_dense_23_kernel_m,
(assignvariableop_56_adam_dense_23_bias_m.
*assignvariableop_57_adam_dense_24_kernel_m,
(assignvariableop_58_adam_dense_24_bias_m.
*assignvariableop_59_adam_dense_25_kernel_m,
(assignvariableop_60_adam_dense_25_bias_m/
+assignvariableop_61_adam_conv2d_27_kernel_v-
)assignvariableop_62_adam_conv2d_27_bias_v:
6assignvariableop_63_adam_batch_normalization_5_gamma_v9
5assignvariableop_64_adam_batch_normalization_5_beta_v/
+assignvariableop_65_adam_conv2d_28_kernel_v-
)assignvariableop_66_adam_conv2d_28_bias_v/
+assignvariableop_67_adam_conv2d_29_kernel_v-
)assignvariableop_68_adam_conv2d_29_bias_v:
6assignvariableop_69_adam_batch_normalization_6_gamma_v9
5assignvariableop_70_adam_batch_normalization_6_beta_v/
+assignvariableop_71_adam_conv2d_30_kernel_v-
)assignvariableop_72_adam_conv2d_30_bias_v/
+assignvariableop_73_adam_conv2d_31_kernel_v-
)assignvariableop_74_adam_conv2d_31_bias_v/
+assignvariableop_75_adam_conv2d_32_kernel_v-
)assignvariableop_76_adam_conv2d_32_bias_v.
*assignvariableop_77_adam_dense_22_kernel_v,
(assignvariableop_78_adam_dense_22_bias_v.
*assignvariableop_79_adam_dense_23_kernel_v,
(assignvariableop_80_adam_dense_23_bias_v.
*assignvariableop_81_adam_dense_24_kernel_v,
(assignvariableop_82_adam_dense_24_bias_v.
*assignvariableop_83_adam_dense_25_kernel_v,
(assignvariableop_84_adam_dense_25_bias_v
identity_86¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_9ê.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*ö-
valueì-Bé-VB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names½
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*Á
value·B´VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÜ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*î
_output_shapesÛ
Ø::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*d
dtypesZ
X2V	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_27_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_27_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2³
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_5_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3²
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_5_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¹
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_5_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5½
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_5_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_28_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_28_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_29_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¦
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_29_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10·
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_6_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¶
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batch_normalization_6_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12½
AssignVariableOp_12AssignVariableOp5assignvariableop_12_batch_normalization_6_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Á
AssignVariableOp_13AssignVariableOp9assignvariableop_13_batch_normalization_6_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¬
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_30_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ª
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_30_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¬
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_31_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ª
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_31_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¬
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_32_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ª
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_32_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20«
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_22_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21©
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_22_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22«
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_23_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23©
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_23_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_24¥
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25§
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26§
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¦
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28®
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29«
AssignVariableOp_29AssignVariableOp#assignvariableop_29_dense_24_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30©
AssignVariableOp_30AssignVariableOp!assignvariableop_30_dense_24_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31«
AssignVariableOp_31AssignVariableOp#assignvariableop_31_dense_25_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32©
AssignVariableOp_32AssignVariableOp!assignvariableop_32_dense_25_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¡
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¡
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35£
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36£
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37³
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_27_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_27_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¾
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_batch_normalization_5_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40½
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_batch_normalization_5_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41³
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_28_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_28_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43³
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_29_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_29_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¾
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_batch_normalization_6_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46½
AssignVariableOp_46AssignVariableOp5assignvariableop_46_adam_batch_normalization_6_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47³
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_30_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48±
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_30_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49³
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_31_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50±
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_31_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51³
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_32_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52±
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_32_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53²
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_22_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54°
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_22_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55²
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_23_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56°
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_23_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57²
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_24_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58°
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_24_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59²
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_25_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60°
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_25_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61³
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_27_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62±
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_27_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63¾
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_5_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64½
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_batch_normalization_5_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65³
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_28_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66±
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_28_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67³
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_29_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68±
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_29_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69¾
AssignVariableOp_69AssignVariableOp6assignvariableop_69_adam_batch_normalization_6_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70½
AssignVariableOp_70AssignVariableOp5assignvariableop_70_adam_batch_normalization_6_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71³
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_30_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72±
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_30_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73³
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_31_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74±
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_31_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75³
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_32_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76±
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_32_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77²
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_dense_22_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78°
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_dense_22_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79²
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_23_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80°
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_23_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81²
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_24_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82°
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_24_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83²
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_25_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84°
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_25_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_849
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¬
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_85
Identity_86IdentityIdentity_85:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_86"#
identity_86Identity_86:output:0*ë
_input_shapesÙ
Ö: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¶
d
H__inference_activation_23_layer_call_and_return_conditional_losses_30883

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
è

P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_30788

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1ö
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_31503

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
À
c
*__inference_dropout_25_layer_call_fn_33074

inputs
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_314792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦
l
@__inference_add_6_layer_call_and_return_conditional_losses_33136
inputs_0
inputs_1
identityY
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/1
Î

Ý
D__inference_conv2d_28_layer_call_and_return_conditional_losses_31130

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ00@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_30649

inputs
identity¶
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
d
E__inference_dropout_23_layer_call_and_return_conditional_losses_31350

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î

Ý
D__inference_conv2d_27_layer_call_and_return_conditional_losses_32506

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
ïk
á

B__inference_model_5_layer_call_and_return_conditional_losses_31788

inputs
inputs_1
conv2d_27_31708
conv2d_27_31710
batch_normalization_5_31713
batch_normalization_5_31715
batch_normalization_5_31717
batch_normalization_5_31719
conv2d_28_31722
conv2d_28_31724
conv2d_29_31729
conv2d_29_31731
batch_normalization_6_31734
batch_normalization_6_31736
batch_normalization_6_31738
batch_normalization_6_31740
conv2d_30_31743
conv2d_30_31745
conv2d_31_31751
conv2d_31_31753
conv2d_32_31759
conv2d_32_31761
dense_22_31767
dense_22_31769
dense_23_31772
dense_23_31774
sequential_19_31778
sequential_19_31780
sequential_19_31782
sequential_19_31784
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢"dropout_22/StatefulPartitionedCall¢"dropout_23/StatefulPartitionedCall¢"dropout_24/StatefulPartitionedCall¢"dropout_25/StatefulPartitionedCall¢%sequential_19/StatefulPartitionedCall
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_27_31708conv2d_27_31710*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_310102#
!conv2d_27/StatefulPartitionedCallº
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_5_31713batch_normalization_5_31715batch_normalization_5_31717batch_normalization_5_31719*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_310632/
-batch_normalization_5/StatefulPartitionedCallÎ
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_28_31722conv2d_28_31724*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_311302#
!conv2d_28/StatefulPartitionedCall
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_306492"
 max_pooling2d_22/PartitionedCall
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_22_layer_call_and_return_conditional_losses_311592$
"dropout_22/StatefulPartitionedCallÄ
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0conv2d_29_31729conv2d_29_31731*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_311882#
!conv2d_29/StatefulPartitionedCall»
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_6_31734batch_normalization_6_31736batch_normalization_6_31738batch_normalization_6_31740*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_312412/
-batch_normalization_6/StatefulPartitionedCallÏ
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_30_31743conv2d_30_31745*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_313082#
!conv2d_30/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_313292
activation_20/PartitionedCall
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_308052"
 max_pooling2d_23/PartitionedCallÂ
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_23_layer_call_and_return_conditional_losses_313502$
"dropout_23/StatefulPartitionedCallÄ
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0conv2d_31_31751conv2d_31_31753*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_313792#
!conv2d_31/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_314002
activation_21/PartitionedCall
 max_pooling2d_24/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_308172"
 max_pooling2d_24/PartitionedCallÂ
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_314212$
"dropout_24/StatefulPartitionedCallÃ
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv2d_32_31759conv2d_32_31761*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_314502#
!conv2d_32/StatefulPartitionedCall
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_308292"
 max_pooling2d_25/PartitionedCallÁ
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_314792$
"dropout_25/StatefulPartitionedCallû
flatten_6/PartitionedCallPartitionedCall+dropout_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_315032
flatten_6/PartitionedCall­
 dense_22/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_22_31767dense_22_31769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_315222"
 dense_22/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCallinputs_1dense_23_31772dense_23_31774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_315492"
 dense_23/StatefulPartitionedCall
add_6/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_6_layer_call_and_return_conditional_losses_315712
add_6/PartitionedCallð
%sequential_19/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0sequential_19_31778sequential_19_31780sequential_19_31782sequential_19_31784*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309542'
%sequential_19/StatefulPartitionedCall¼
IdentityIdentity.sequential_19/StatefulPartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
´e
Í	
B__inference_model_5_layer_call_and_return_conditional_losses_31934

inputs
inputs_1
conv2d_27_31854
conv2d_27_31856
batch_normalization_5_31859
batch_normalization_5_31861
batch_normalization_5_31863
batch_normalization_5_31865
conv2d_28_31868
conv2d_28_31870
conv2d_29_31875
conv2d_29_31877
batch_normalization_6_31880
batch_normalization_6_31882
batch_normalization_6_31884
batch_normalization_6_31886
conv2d_30_31889
conv2d_30_31891
conv2d_31_31897
conv2d_31_31899
conv2d_32_31905
conv2d_32_31907
dense_22_31913
dense_22_31915
dense_23_31918
dense_23_31920
sequential_19_31924
sequential_19_31926
sequential_19_31928
sequential_19_31930
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢%sequential_19/StatefulPartitionedCall
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_27_31854conv2d_27_31856*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_310102#
!conv2d_27/StatefulPartitionedCall¼
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_5_31859batch_normalization_5_31861batch_normalization_5_31863batch_normalization_5_31865*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_310832/
-batch_normalization_5/StatefulPartitionedCallÎ
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_28_31868conv2d_28_31870*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_311302#
!conv2d_28/StatefulPartitionedCall
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_306492"
 max_pooling2d_22/PartitionedCall
dropout_22/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_22_layer_call_and_return_conditional_losses_311642
dropout_22/PartitionedCall¼
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0conv2d_29_31875conv2d_29_31877*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_311882#
!conv2d_29/StatefulPartitionedCall½
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_6_31880batch_normalization_6_31882batch_normalization_6_31884batch_normalization_6_31886*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_312612/
-batch_normalization_6/StatefulPartitionedCallÏ
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_30_31889conv2d_30_31891*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_313082#
!conv2d_30/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_313292
activation_20/PartitionedCall
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_308052"
 max_pooling2d_23/PartitionedCall
dropout_23/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_23_layer_call_and_return_conditional_losses_313552
dropout_23/PartitionedCall¼
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0conv2d_31_31897conv2d_31_31899*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_313792#
!conv2d_31/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_314002
activation_21/PartitionedCall
 max_pooling2d_24/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_308172"
 max_pooling2d_24/PartitionedCall
dropout_24/PartitionedCallPartitionedCall)max_pooling2d_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_314262
dropout_24/PartitionedCall»
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv2d_32_31905conv2d_32_31907*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_314502#
!conv2d_32/StatefulPartitionedCall
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_308292"
 max_pooling2d_25/PartitionedCall
dropout_25/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_314842
dropout_25/PartitionedCalló
flatten_6/PartitionedCallPartitionedCall#dropout_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_315032
flatten_6/PartitionedCall­
 dense_22/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_22_31913dense_22_31915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_315222"
 dense_22/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCallinputs_1dense_23_31918dense_23_31920*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_315492"
 dense_23/StatefulPartitionedCall
add_6/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_6_layer_call_and_return_conditional_losses_315712
add_6/PartitionedCallð
%sequential_19/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0sequential_19_31924sequential_19_31926sequential_19_31928sequential_19_31930*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309832'
%sequential_19/StatefulPartitionedCall¨
IdentityIdentity.sequential_19/StatefulPartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Ó
¨
5__inference_batch_normalization_5_layer_call_fn_32586

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_310632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ00@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
Ô
¬
#__inference_signature_wrapper_32065
conv2d_27_input
dense_23_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallconv2d_27_inputdense_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_304992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
)
_user_specified_nameconv2d_27_input:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_23_input
ÿ

P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_31083

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/add_1ã
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ00@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
ì
c
E__inference_dropout_24_layer_call_and_return_conditional_losses_33022

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32657

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1õ
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¥
 
-__inference_sequential_19_layer_call_fn_33206

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
4
Å
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_31063

inputs
assignmovingavg_31036
assignmovingavg_1_31043)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¬
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/31036*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/31036*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_31036*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/31036*
_output_shapes
:@2
AssignMovingAvg/subá
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/31036*
_output_shapes
:@2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_31036AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/31036*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/31043*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/31043*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_31043*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/31043*
_output_shapes
:@2
AssignMovingAvg_1/subë
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/31043*
_output_shapes
:@2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_31043AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/31043*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/add_1»
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ00@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
Ä
c
*__inference_dropout_23_layer_call_fn_32970

inputs
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_23_layer_call_and_return_conditional_losses_313502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
F
*__inference_dropout_23_layer_call_fn_32975

inputs
identityÌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_23_layer_call_and_return_conditional_losses_313552
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30632

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1õ
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
×

Ý
D__inference_conv2d_31_layer_call_and_return_conditional_losses_32986

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼µ

B__inference_model_5_layer_call_and_return_conditional_losses_32250
inputs_0
inputs_1,
(conv2d_27_conv2d_readvariableop_resource-
)conv2d_27_biasadd_readvariableop_resource/
+batch_normalization_5_assignmovingavg_320841
-batch_normalization_5_assignmovingavg_1_32091?
;batch_normalization_5_batchnorm_mul_readvariableop_resource;
7batch_normalization_5_batchnorm_readvariableop_resource,
(conv2d_28_conv2d_readvariableop_resource-
)conv2d_28_biasadd_readvariableop_resource,
(conv2d_29_conv2d_readvariableop_resource-
)conv2d_29_biasadd_readvariableop_resource/
+batch_normalization_6_assignmovingavg_321411
-batch_normalization_6_assignmovingavg_1_32148?
;batch_normalization_6_batchnorm_mul_readvariableop_resource;
7batch_normalization_6_batchnorm_readvariableop_resource,
(conv2d_30_conv2d_readvariableop_resource-
)conv2d_30_biasadd_readvariableop_resource,
(conv2d_31_conv2d_readvariableop_resource-
)conv2d_31_biasadd_readvariableop_resource,
(conv2d_32_conv2d_readvariableop_resource-
)conv2d_32_biasadd_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource9
5sequential_19_dense_24_matmul_readvariableop_resource:
6sequential_19_dense_24_biasadd_readvariableop_resource9
5sequential_19_dense_25_matmul_readvariableop_resource:
6sequential_19_dense_25_biasadd_readvariableop_resource
identity¢9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp¢4batch_normalization_5/AssignMovingAvg/ReadVariableOp¢;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp¢6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_5/batchnorm/ReadVariableOp¢2batch_normalization_5/batchnorm/mul/ReadVariableOp¢9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp¢4batch_normalization_6/AssignMovingAvg/ReadVariableOp¢;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp¢6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_6/batchnorm/ReadVariableOp¢2batch_normalization_6/batchnorm/mul/ReadVariableOp¢ conv2d_27/BiasAdd/ReadVariableOp¢conv2d_27/Conv2D/ReadVariableOp¢ conv2d_28/BiasAdd/ReadVariableOp¢conv2d_28/Conv2D/ReadVariableOp¢ conv2d_29/BiasAdd/ReadVariableOp¢conv2d_29/Conv2D/ReadVariableOp¢ conv2d_30/BiasAdd/ReadVariableOp¢conv2d_30/Conv2D/ReadVariableOp¢ conv2d_31/BiasAdd/ReadVariableOp¢conv2d_31/Conv2D/ReadVariableOp¢ conv2d_32/BiasAdd/ReadVariableOp¢conv2d_32/Conv2D/ReadVariableOp¢dense_22/BiasAdd/ReadVariableOp¢dense_22/MatMul/ReadVariableOp¢dense_23/BiasAdd/ReadVariableOp¢dense_23/MatMul/ReadVariableOp¢-sequential_19/dense_24/BiasAdd/ReadVariableOp¢,sequential_19/dense_24/MatMul/ReadVariableOp¢-sequential_19/dense_25/BiasAdd/ReadVariableOp¢,sequential_19/dense_25/MatMul/ReadVariableOp³
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_27/Conv2D/ReadVariableOpÃ
conv2d_27/Conv2DConv2Dinputs_0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
conv2d_27/Conv2Dª
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp°
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_27/BiasAdd~
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_27/ReluÁ
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_5/moments/mean/reduction_indicesï
"batch_normalization_5/moments/meanMeanconv2d_27/Relu:activations:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2$
"batch_normalization_5/moments/meanÆ
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*&
_output_shapes
:@2,
*batch_normalization_5/moments/StopGradient
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferenceconv2d_27/Relu:activations:03batch_normalization_5/moments/StopGradient:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@21
/batch_normalization_5/moments/SquaredDifferenceÉ
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_5/moments/variance/reduction_indices
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2(
&batch_normalization_5/moments/varianceÄ
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_5/moments/SqueezeÌ
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_5/moments/Squeeze_1
+batch_normalization_5/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_5/AssignMovingAvg/32084*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_5/AssignMovingAvg/decay´
*batch_normalization_5/AssignMovingAvg/CastCast4batch_normalization_5/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*>
_class4
20loc:@batch_normalization_5/AssignMovingAvg/32084*
_output_shapes
: 2,
*batch_normalization_5/AssignMovingAvg/CastÔ
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_5_assignmovingavg_32084*
_output_shapes
:@*
dtype026
4batch_normalization_5/AssignMovingAvg/ReadVariableOpÞ
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_5/AssignMovingAvg/32084*
_output_shapes
:@2+
)batch_normalization_5/AssignMovingAvg/subÏ
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:0.batch_normalization_5/AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_5/AssignMovingAvg/32084*
_output_shapes
:@2+
)batch_normalization_5/AssignMovingAvg/mul±
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_5_assignmovingavg_32084-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_5/AssignMovingAvg/32084*
_output_shapes
 *
dtype02;
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_5/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg_1/32091*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_5/AssignMovingAvg_1/decay¼
,batch_normalization_5/AssignMovingAvg_1/CastCast6batch_normalization_5/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg_1/32091*
_output_shapes
: 2.
,batch_normalization_5/AssignMovingAvg_1/CastÚ
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_5_assignmovingavg_1_32091*
_output_shapes
:@*
dtype028
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpè
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg_1/32091*
_output_shapes
:@2-
+batch_normalization_5/AssignMovingAvg_1/subÙ
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:00batch_normalization_5/AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg_1/32091*
_output_shapes
:@2-
+batch_normalization_5/AssignMovingAvg_1/mul½
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_5_assignmovingavg_1_32091/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_5/AssignMovingAvg_1/32091*
_output_shapes
 *
dtype02=
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2'
%batch_normalization_5/batchnorm/add/yÚ
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_5/batchnorm/add¥
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_5/batchnorm/Rsqrtà
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOpÝ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_5/batchnorm/mulÖ
%batch_normalization_5/batchnorm/mul_1Mulconv2d_27/Relu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2'
%batch_normalization_5/batchnorm/mul_1Ó
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_5/batchnorm/mul_2Ô
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOpÙ
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_5/batchnorm/subå
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2'
%batch_normalization_5/batchnorm/add_1³
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_28/Conv2D/ReadVariableOpä
conv2d_28/Conv2DConv2D)batch_normalization_5/batchnorm/add_1:z:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
conv2d_28/Conv2Dª
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp°
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_28/BiasAdd~
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_28/ReluÓ
max_pooling2d_22/MaxPoolMaxPoolconv2d_28/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_22/MaxPool}
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2·mÛ¶mÛö?2
dropout_22/dropout/Const·
dropout_22/dropout/MulMul!max_pooling2d_22/MaxPool:output:0!dropout_22/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_22/dropout/Mul
dropout_22/dropout/ShapeShape!max_pooling2d_22/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_22/dropout/ShapeÝ
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype021
/dropout_22/dropout/random_uniform/RandomUniform
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2333333Ó?2#
!dropout_22/dropout/GreaterEqual/yò
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
dropout_22/dropout/GreaterEqual¨
dropout_22/dropout/CastCast#dropout_22/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_22/dropout/Cast®
dropout_22/dropout/Mul_1Muldropout_22/dropout/Mul:z:0dropout_22/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_22/dropout/Mul_1´
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_29/Conv2D/ReadVariableOpØ
conv2d_29/Conv2DConv2Ddropout_22/dropout/Mul_1:z:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_29/Conv2D«
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp±
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_29/BiasAdd
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_29/ReluÁ
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_6/moments/mean/reduction_indicesð
"batch_normalization_6/moments/meanMeanconv2d_29/Relu:activations:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2$
"batch_normalization_6/moments/meanÇ
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*'
_output_shapes
:2,
*batch_normalization_6/moments/StopGradient
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferenceconv2d_29/Relu:activations:03batch_normalization_6/moments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/batch_normalization_6/moments/SquaredDifferenceÉ
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_6/moments/variance/reduction_indices
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2(
&batch_normalization_6/moments/varianceÅ
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_6/moments/SqueezeÍ
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_6/moments/Squeeze_1
+batch_normalization_6/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_6/AssignMovingAvg/32141*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_6/AssignMovingAvg/decay´
*batch_normalization_6/AssignMovingAvg/CastCast4batch_normalization_6/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*>
_class4
20loc:@batch_normalization_6/AssignMovingAvg/32141*
_output_shapes
: 2,
*batch_normalization_6/AssignMovingAvg/CastÕ
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_6_assignmovingavg_32141*
_output_shapes	
:*
dtype026
4batch_normalization_6/AssignMovingAvg/ReadVariableOpß
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_6/AssignMovingAvg/32141*
_output_shapes	
:2+
)batch_normalization_6/AssignMovingAvg/subÐ
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:0.batch_normalization_6/AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_6/AssignMovingAvg/32141*
_output_shapes	
:2+
)batch_normalization_6/AssignMovingAvg/mul±
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_6_assignmovingavg_32141-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_6/AssignMovingAvg/32141*
_output_shapes
 *
dtype02;
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_6/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg_1/32148*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_6/AssignMovingAvg_1/decay¼
,batch_normalization_6/AssignMovingAvg_1/CastCast6batch_normalization_6/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg_1/32148*
_output_shapes
: 2.
,batch_normalization_6/AssignMovingAvg_1/CastÛ
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_6_assignmovingavg_1_32148*
_output_shapes	
:*
dtype028
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpé
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg_1/32148*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_1/subÚ
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:00batch_normalization_6/AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg_1/32148*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_1/mul½
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_6_assignmovingavg_1_32148/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_6/AssignMovingAvg_1/32148*
_output_shapes
 *
dtype02=
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2'
%batch_normalization_6/batchnorm/add/yÛ
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/add¦
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/Rsqrtá
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_6/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/mul×
%batch_normalization_6/batchnorm/mul_1Mulconv2d_29/Relu:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_6/batchnorm/mul_1Ô
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/mul_2Õ
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_6/batchnorm/ReadVariableOpÚ
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/subæ
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_6/batchnorm/add_1µ
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_30/Conv2D/ReadVariableOpå
conv2d_30/Conv2DConv2D)batch_normalization_6/batchnorm/add_1:z:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_30/Conv2D«
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_30/BiasAdd/ReadVariableOp±
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_30/BiasAdd
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_30/Relu
activation_20/ReluReluconv2d_30/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_20/ReluØ
max_pooling2d_23/MaxPoolMaxPool activation_20/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_23/MaxPool}
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout_23/dropout/Const¸
dropout_23/dropout/MulMul!max_pooling2d_23/MaxPool:output:0!dropout_23/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/dropout/Mul
dropout_23/dropout/ShapeShape!max_pooling2d_23/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_23/dropout/ShapeÞ
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_23/dropout/random_uniform/RandomUniform
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2#
!dropout_23/dropout/GreaterEqual/yó
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_23/dropout/GreaterEqual©
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/dropout/Cast¯
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/dropout/Mul_1µ
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_31/Conv2D/ReadVariableOpØ
conv2d_31/Conv2DConv2Ddropout_23/dropout/Mul_1:z:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_31/Conv2D«
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_31/BiasAdd/ReadVariableOp±
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_31/BiasAdd
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_31/Relu
activation_21/ReluReluconv2d_31/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_21/ReluØ
max_pooling2d_24/MaxPoolMaxPool activation_21/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPool}
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout_24/dropout/Const¸
dropout_24/dropout/MulMul!max_pooling2d_24/MaxPool:output:0!dropout_24/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Mul
dropout_24/dropout/ShapeShape!max_pooling2d_24/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_24/dropout/ShapeÞ
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_24/dropout/random_uniform/RandomUniform
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2#
!dropout_24/dropout/GreaterEqual/yó
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_24/dropout/GreaterEqual©
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Cast¯
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Mul_1´
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_32/Conv2D/ReadVariableOpØ
conv2d_32/Conv2DConv2Ddropout_24/dropout/Mul_1:z:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_32/Conv2Dª
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_32/BiasAdd/ReadVariableOp°
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_32/BiasAdd~
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_32/ReluÓ
max_pooling2d_25/MaxPoolMaxPoolconv2d_32/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_25/MaxPool}
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout_25/dropout/Const·
dropout_25/dropout/MulMul!max_pooling2d_25/MaxPool:output:0!dropout_25/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_25/dropout/Mul
dropout_25/dropout/ShapeShape!max_pooling2d_25/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_25/dropout/ShapeÝ
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype021
/dropout_25/dropout/random_uniform/RandomUniform
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2#
!dropout_25/dropout/GreaterEqual/yò
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
dropout_25/dropout/GreaterEqual¨
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_25/dropout/Cast®
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_25/dropout/Mul_1s
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
flatten_6/Const
flatten_6/ReshapeReshapedropout_25/dropout/Mul_1:z:0flatten_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
flatten_6/Reshape¨
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_22/MatMul/ReadVariableOp¢
dense_22/MatMulMatMulflatten_6/Reshape:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_22/MatMul§
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_22/BiasAdd/ReadVariableOp¥
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_22/Relu¨
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02 
dense_23/MatMul/ReadVariableOp
dense_23/MatMulMatMulinputs_1&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_23/MatMul§
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_23/BiasAdd/ReadVariableOp¥
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_23/Relu
	add_6/addAddV2dense_22/Relu:activations:0dense_23/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	add_6/add
 sequential_19/activation_22/ReluReluadd_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_19/activation_22/ReluÒ
,sequential_19/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_24_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_19/dense_24/MatMul/ReadVariableOpà
sequential_19/dense_24/MatMulMatMul.sequential_19/activation_22/Relu:activations:04sequential_19/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_19/dense_24/MatMulÑ
-sequential_19/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_19/dense_24/BiasAdd/ReadVariableOpÝ
sequential_19/dense_24/BiasAddBiasAdd'sequential_19/dense_24/MatMul:product:05sequential_19/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_19/dense_24/BiasAdd§
 sequential_19/activation_23/ReluRelu'sequential_19/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_19/activation_23/ReluÒ
,sequential_19/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_19/dense_25/MatMul/ReadVariableOpà
sequential_19/dense_25/MatMulMatMul.sequential_19/activation_23/Relu:activations:04sequential_19/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_19/dense_25/MatMulÑ
-sequential_19/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_25/BiasAdd/ReadVariableOpÝ
sequential_19/dense_25/BiasAddBiasAdd'sequential_19/dense_25/MatMul:product:05sequential_19/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_19/dense_25/BiasAdd¦
sequential_19/dense_25/SoftmaxSoftmax'sequential_19/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_19/dense_25/Softmaxþ
IdentityIdentity(sequential_19/dense_25/Softmax:softmax:0:^batch_normalization_5/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_5/AssignMovingAvg/ReadVariableOp<^batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp:^batch_normalization_6/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_6/AssignMovingAvg/ReadVariableOp<^batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp.^sequential_19/dense_24/BiasAdd/ReadVariableOp-^sequential_19/dense_24/MatMul/ReadVariableOp.^sequential_19/dense_25/BiasAdd/ReadVariableOp-^sequential_19/dense_25/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2v
9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp9batch_normalization_5/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_5/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2v
9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp9batch_normalization_6/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_6/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2^
-sequential_19/dense_24/BiasAdd/ReadVariableOp-sequential_19/dense_24/BiasAdd/ReadVariableOp2\
,sequential_19/dense_24/MatMul/ReadVariableOp,sequential_19/dense_24/MatMul/ReadVariableOp2^
-sequential_19/dense_25/BiasAdd/ReadVariableOp-sequential_19/dense_25/BiasAdd/ReadVariableOp2\
,sequential_19/dense_25/MatMul/ReadVariableOp,sequential_19/dense_25/MatMul/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/1
¸
F
*__inference_dropout_24_layer_call_fn_33032

inputs
identityÌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_314262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
d
E__inference_dropout_22_layer_call_and_return_conditional_losses_31159

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2·mÛ¶mÛö?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¼
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2333333Ó?2
dropout/GreaterEqual/yÆ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
}
(__inference_dense_25_layer_call_fn_33265

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_309022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
­
L
0__inference_max_pooling2d_24_layer_call_fn_30823

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_308172
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
l
ð

B__inference_model_5_layer_call_and_return_conditional_losses_31616
conv2d_27_input
dense_23_input
conv2d_27_31021
conv2d_27_31023
batch_normalization_5_31110
batch_normalization_5_31112
batch_normalization_5_31114
batch_normalization_5_31116
conv2d_28_31141
conv2d_28_31143
conv2d_29_31199
conv2d_29_31201
batch_normalization_6_31288
batch_normalization_6_31290
batch_normalization_6_31292
batch_normalization_6_31294
conv2d_30_31319
conv2d_30_31321
conv2d_31_31390
conv2d_31_31392
conv2d_32_31461
conv2d_32_31463
dense_22_31533
dense_22_31535
dense_23_31560
dense_23_31562
sequential_19_31606
sequential_19_31608
sequential_19_31610
sequential_19_31612
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢"dropout_22/StatefulPartitionedCall¢"dropout_23/StatefulPartitionedCall¢"dropout_24/StatefulPartitionedCall¢"dropout_25/StatefulPartitionedCall¢%sequential_19/StatefulPartitionedCall§
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCallconv2d_27_inputconv2d_27_31021conv2d_27_31023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_310102#
!conv2d_27/StatefulPartitionedCallº
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_5_31110batch_normalization_5_31112batch_normalization_5_31114batch_normalization_5_31116*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_310632/
-batch_normalization_5/StatefulPartitionedCallÎ
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_28_31141conv2d_28_31143*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_311302#
!conv2d_28/StatefulPartitionedCall
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_306492"
 max_pooling2d_22/PartitionedCall
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_22_layer_call_and_return_conditional_losses_311592$
"dropout_22/StatefulPartitionedCallÄ
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0conv2d_29_31199conv2d_29_31201*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_311882#
!conv2d_29/StatefulPartitionedCall»
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_6_31288batch_normalization_6_31290batch_normalization_6_31292batch_normalization_6_31294*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_312412/
-batch_normalization_6/StatefulPartitionedCallÏ
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_30_31319conv2d_30_31321*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_313082#
!conv2d_30/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_313292
activation_20/PartitionedCall
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_308052"
 max_pooling2d_23/PartitionedCallÂ
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_23_layer_call_and_return_conditional_losses_313502$
"dropout_23/StatefulPartitionedCallÄ
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0conv2d_31_31390conv2d_31_31392*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_313792#
!conv2d_31/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_314002
activation_21/PartitionedCall
 max_pooling2d_24/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_308172"
 max_pooling2d_24/PartitionedCallÂ
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_314212$
"dropout_24/StatefulPartitionedCallÃ
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv2d_32_31461conv2d_32_31463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_314502#
!conv2d_32/StatefulPartitionedCall
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_308292"
 max_pooling2d_25/PartitionedCallÁ
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_314792$
"dropout_25/StatefulPartitionedCallû
flatten_6/PartitionedCallPartitionedCall+dropout_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_315032
flatten_6/PartitionedCall­
 dense_22/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_22_31533dense_22_31535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_315222"
 dense_22/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCalldense_23_inputdense_23_31560dense_23_31562*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_315492"
 dense_23/StatefulPartitionedCall
add_6/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_6_layer_call_and_return_conditional_losses_315712
add_6/PartitionedCallð
%sequential_19/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0sequential_19_31606sequential_19_31608sequential_19_31610sequential_19_31612*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309542'
%sequential_19/StatefulPartitionedCall¼
IdentityIdentity.sequential_19/StatefulPartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
)
_user_specified_nameconv2d_27_input:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_23_input
Ï
£
'__inference_model_5_layer_call_fn_32433
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_5_layer_call_and_return_conditional_losses_317882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/1
Ú
d
H__inference_activation_21_layer_call_and_return_conditional_losses_33000

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

£
H__inference_sequential_19_layer_call_and_return_conditional_losses_33180

inputs+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource
identity¢dense_24/BiasAdd/ReadVariableOp¢dense_24/MatMul/ReadVariableOp¢dense_25/BiasAdd/ReadVariableOp¢dense_25/MatMul/ReadVariableOpj
activation_22/ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
activation_22/Relu¨
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_24/MatMul/ReadVariableOp¨
dense_24/MatMulMatMul activation_22/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_24/MatMul§
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_24/BiasAdd/ReadVariableOp¥
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_24/BiasAdd}
activation_23/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
activation_23/Relu¨
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_25/MatMul/ReadVariableOp¨
dense_25/MatMulMatMul activation_23/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/MatMul§
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOp¥
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/BiasAdd|
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/Softmaxô
IdentityIdentitydense_25/Softmax:softmax:0 ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ú
}
(__inference_dense_22_layer_call_fn_33110

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_315222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
À
c
*__inference_dropout_22_layer_call_fn_32725

inputs
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_22_layer_call_and_return_conditional_losses_311592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_31261

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1ä
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô

Ý
D__inference_conv2d_29_layer_call_and_return_conditional_losses_32741

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¨´
µ
B__inference_model_5_layer_call_and_return_conditional_losses_32371
inputs_0
inputs_1,
(conv2d_27_conv2d_readvariableop_resource-
)conv2d_27_biasadd_readvariableop_resource;
7batch_normalization_5_batchnorm_readvariableop_resource?
;batch_normalization_5_batchnorm_mul_readvariableop_resource=
9batch_normalization_5_batchnorm_readvariableop_1_resource=
9batch_normalization_5_batchnorm_readvariableop_2_resource,
(conv2d_28_conv2d_readvariableop_resource-
)conv2d_28_biasadd_readvariableop_resource,
(conv2d_29_conv2d_readvariableop_resource-
)conv2d_29_biasadd_readvariableop_resource;
7batch_normalization_6_batchnorm_readvariableop_resource?
;batch_normalization_6_batchnorm_mul_readvariableop_resource=
9batch_normalization_6_batchnorm_readvariableop_1_resource=
9batch_normalization_6_batchnorm_readvariableop_2_resource,
(conv2d_30_conv2d_readvariableop_resource-
)conv2d_30_biasadd_readvariableop_resource,
(conv2d_31_conv2d_readvariableop_resource-
)conv2d_31_biasadd_readvariableop_resource,
(conv2d_32_conv2d_readvariableop_resource-
)conv2d_32_biasadd_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource9
5sequential_19_dense_24_matmul_readvariableop_resource:
6sequential_19_dense_24_biasadd_readvariableop_resource9
5sequential_19_dense_25_matmul_readvariableop_resource:
6sequential_19_dense_25_biasadd_readvariableop_resource
identity¢.batch_normalization_5/batchnorm/ReadVariableOp¢0batch_normalization_5/batchnorm/ReadVariableOp_1¢0batch_normalization_5/batchnorm/ReadVariableOp_2¢2batch_normalization_5/batchnorm/mul/ReadVariableOp¢.batch_normalization_6/batchnorm/ReadVariableOp¢0batch_normalization_6/batchnorm/ReadVariableOp_1¢0batch_normalization_6/batchnorm/ReadVariableOp_2¢2batch_normalization_6/batchnorm/mul/ReadVariableOp¢ conv2d_27/BiasAdd/ReadVariableOp¢conv2d_27/Conv2D/ReadVariableOp¢ conv2d_28/BiasAdd/ReadVariableOp¢conv2d_28/Conv2D/ReadVariableOp¢ conv2d_29/BiasAdd/ReadVariableOp¢conv2d_29/Conv2D/ReadVariableOp¢ conv2d_30/BiasAdd/ReadVariableOp¢conv2d_30/Conv2D/ReadVariableOp¢ conv2d_31/BiasAdd/ReadVariableOp¢conv2d_31/Conv2D/ReadVariableOp¢ conv2d_32/BiasAdd/ReadVariableOp¢conv2d_32/Conv2D/ReadVariableOp¢dense_22/BiasAdd/ReadVariableOp¢dense_22/MatMul/ReadVariableOp¢dense_23/BiasAdd/ReadVariableOp¢dense_23/MatMul/ReadVariableOp¢-sequential_19/dense_24/BiasAdd/ReadVariableOp¢,sequential_19/dense_24/MatMul/ReadVariableOp¢-sequential_19/dense_25/BiasAdd/ReadVariableOp¢,sequential_19/dense_25/MatMul/ReadVariableOp³
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_27/Conv2D/ReadVariableOpÃ
conv2d_27/Conv2DConv2Dinputs_0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
conv2d_27/Conv2Dª
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp°
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_27/BiasAdd~
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_27/ReluÔ
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2'
%batch_normalization_5/batchnorm/add/yà
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_5/batchnorm/add¥
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_5/batchnorm/Rsqrtà
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOpÝ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_5/batchnorm/mulÖ
%batch_normalization_5/batchnorm/mul_1Mulconv2d_27/Relu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2'
%batch_normalization_5/batchnorm/mul_1Ú
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_1Ý
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_5/batchnorm/mul_2Ú
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_2Û
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_5/batchnorm/subå
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2'
%batch_normalization_5/batchnorm/add_1³
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_28/Conv2D/ReadVariableOpä
conv2d_28/Conv2DConv2D)batch_normalization_5/batchnorm/add_1:z:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
conv2d_28/Conv2Dª
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp°
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_28/BiasAdd~
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
conv2d_28/ReluÓ
max_pooling2d_22/MaxPoolMaxPoolconv2d_28/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_22/MaxPool
dropout_22/IdentityIdentity!max_pooling2d_22/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_22/Identity´
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_29/Conv2D/ReadVariableOpØ
conv2d_29/Conv2DConv2Ddropout_22/Identity:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_29/Conv2D«
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp±
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_29/BiasAdd
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_29/ReluÕ
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_6/batchnorm/ReadVariableOp
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2'
%batch_normalization_6/batchnorm/add/yá
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/add¦
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/Rsqrtá
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_6/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/mul×
%batch_normalization_6/batchnorm/mul_1Mulconv2d_29/Relu:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_6/batchnorm/mul_1Û
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_6/batchnorm/ReadVariableOp_1Þ
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/mul_2Û
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_6/batchnorm/ReadVariableOp_2Ü
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/subæ
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_6/batchnorm/add_1µ
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_30/Conv2D/ReadVariableOpå
conv2d_30/Conv2DConv2D)batch_normalization_6/batchnorm/add_1:z:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_30/Conv2D«
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_30/BiasAdd/ReadVariableOp±
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_30/BiasAdd
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_30/Relu
activation_20/ReluReluconv2d_30/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_20/ReluØ
max_pooling2d_23/MaxPoolMaxPool activation_20/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_23/MaxPool
dropout_23/IdentityIdentity!max_pooling2d_23/MaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/Identityµ
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_31/Conv2D/ReadVariableOpØ
conv2d_31/Conv2DConv2Ddropout_23/Identity:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_31/Conv2D«
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_31/BiasAdd/ReadVariableOp±
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_31/BiasAdd
conv2d_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_31/Relu
activation_21/ReluReluconv2d_31/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_21/ReluØ
max_pooling2d_24/MaxPoolMaxPool activation_21/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPool
dropout_24/IdentityIdentity!max_pooling2d_24/MaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/Identity´
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_32/Conv2D/ReadVariableOpØ
conv2d_32/Conv2DConv2Ddropout_24/Identity:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_32/Conv2Dª
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_32/BiasAdd/ReadVariableOp°
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_32/BiasAdd~
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_32/ReluÓ
max_pooling2d_25/MaxPoolMaxPoolconv2d_32/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_25/MaxPool
dropout_25/IdentityIdentity!max_pooling2d_25/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_25/Identitys
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
flatten_6/Const
flatten_6/ReshapeReshapedropout_25/Identity:output:0flatten_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
flatten_6/Reshape¨
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_22/MatMul/ReadVariableOp¢
dense_22/MatMulMatMulflatten_6/Reshape:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_22/MatMul§
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_22/BiasAdd/ReadVariableOp¥
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_22/Relu¨
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02 
dense_23/MatMul/ReadVariableOp
dense_23/MatMulMatMulinputs_1&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_23/MatMul§
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_23/BiasAdd/ReadVariableOp¥
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_23/Relu
	add_6/addAddV2dense_22/Relu:activations:0dense_23/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	add_6/add
 sequential_19/activation_22/ReluReluadd_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_19/activation_22/ReluÒ
,sequential_19/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_24_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_19/dense_24/MatMul/ReadVariableOpà
sequential_19/dense_24/MatMulMatMul.sequential_19/activation_22/Relu:activations:04sequential_19/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_19/dense_24/MatMulÑ
-sequential_19/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_19/dense_24/BiasAdd/ReadVariableOpÝ
sequential_19/dense_24/BiasAddBiasAdd'sequential_19/dense_24/MatMul:product:05sequential_19/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_19/dense_24/BiasAdd§
 sequential_19/activation_23/ReluRelu'sequential_19/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_19/activation_23/ReluÒ
,sequential_19/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_19/dense_25/MatMul/ReadVariableOpà
sequential_19/dense_25/MatMulMatMul.sequential_19/activation_23/Relu:activations:04sequential_19/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_19/dense_25/MatMulÑ
-sequential_19/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_25/BiasAdd/ReadVariableOpÝ
sequential_19/dense_25/BiasAddBiasAdd'sequential_19/dense_25/MatMul:product:05sequential_19/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_19/dense_25/BiasAdd¦
sequential_19/dense_25/SoftmaxSoftmax'sequential_19/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_19/dense_25/Softmaxö	
IdentityIdentity(sequential_19/dense_25/Softmax:softmax:0/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp.^sequential_19/dense_24/BiasAdd/ReadVariableOp-^sequential_19/dense_24/MatMul/ReadVariableOp.^sequential_19/dense_25/BiasAdd/ReadVariableOp-^sequential_19/dense_25/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2^
-sequential_19/dense_24/BiasAdd/ReadVariableOp-sequential_19/dense_24/BiasAdd/ReadVariableOp2\
,sequential_19/dense_24/MatMul/ReadVariableOp,sequential_19/dense_24/MatMul/ReadVariableOp2^
-sequential_19/dense_25/BiasAdd/ReadVariableOp-sequential_19/dense_25/BiasAdd/ReadVariableOp2\
,sequential_19/dense_25/MatMul/ReadVariableOp,sequential_19/dense_25/MatMul/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
"
_user_specified_name
inputs/1

¨
5__inference_batch_normalization_5_layer_call_fn_32670

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_305992
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
þ
~
)__inference_conv2d_29_layer_call_fn_32750

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_311882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¾
I
-__inference_activation_20_layer_call_fn_32948

inputs
identityÏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_313292
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
d
E__inference_dropout_24_layer_call_and_return_conditional_losses_31421

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_33085

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
í	
Ü
C__inference_dense_22_layer_call_and_return_conditional_losses_31522

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ãe
Ü	
B__inference_model_5_layer_call_and_return_conditional_losses_31700
conv2d_27_input
dense_23_input
conv2d_27_31620
conv2d_27_31622
batch_normalization_5_31625
batch_normalization_5_31627
batch_normalization_5_31629
batch_normalization_5_31631
conv2d_28_31634
conv2d_28_31636
conv2d_29_31641
conv2d_29_31643
batch_normalization_6_31646
batch_normalization_6_31648
batch_normalization_6_31650
batch_normalization_6_31652
conv2d_30_31655
conv2d_30_31657
conv2d_31_31663
conv2d_31_31665
conv2d_32_31671
conv2d_32_31673
dense_22_31679
dense_22_31681
dense_23_31684
dense_23_31686
sequential_19_31690
sequential_19_31692
sequential_19_31694
sequential_19_31696
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢%sequential_19/StatefulPartitionedCall§
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCallconv2d_27_inputconv2d_27_31620conv2d_27_31622*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_310102#
!conv2d_27/StatefulPartitionedCall¼
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_5_31625batch_normalization_5_31627batch_normalization_5_31629batch_normalization_5_31631*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_310832/
-batch_normalization_5/StatefulPartitionedCallÎ
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_28_31634conv2d_28_31636*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_311302#
!conv2d_28/StatefulPartitionedCall
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_306492"
 max_pooling2d_22/PartitionedCall
dropout_22/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_22_layer_call_and_return_conditional_losses_311642
dropout_22/PartitionedCall¼
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0conv2d_29_31641conv2d_29_31643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_311882#
!conv2d_29/StatefulPartitionedCall½
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_6_31646batch_normalization_6_31648batch_normalization_6_31650batch_normalization_6_31652*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_312612/
-batch_normalization_6/StatefulPartitionedCallÏ
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_30_31655conv2d_30_31657*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_313082#
!conv2d_30/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_20_layer_call_and_return_conditional_losses_313292
activation_20/PartitionedCall
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_308052"
 max_pooling2d_23/PartitionedCall
dropout_23/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_23_layer_call_and_return_conditional_losses_313552
dropout_23/PartitionedCall¼
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0conv2d_31_31663conv2d_31_31665*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_313792#
!conv2d_31/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_21_layer_call_and_return_conditional_losses_314002
activation_21/PartitionedCall
 max_pooling2d_24/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_308172"
 max_pooling2d_24/PartitionedCall
dropout_24/PartitionedCallPartitionedCall)max_pooling2d_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_314262
dropout_24/PartitionedCall»
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv2d_32_31671conv2d_32_31673*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_314502#
!conv2d_32/StatefulPartitionedCall
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_308292"
 max_pooling2d_25/PartitionedCall
dropout_25/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_314842
dropout_25/PartitionedCalló
flatten_6/PartitionedCallPartitionedCall#dropout_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_315032
flatten_6/PartitionedCall­
 dense_22/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_22_31679dense_22_31681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_315222"
 dense_22/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCalldense_23_inputdense_23_31684dense_23_31686*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_315492"
 dense_23/StatefulPartitionedCall
add_6/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_6_layer_call_and_return_conditional_losses_315712
add_6/PartitionedCallð
%sequential_19/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0sequential_19_31690sequential_19_31692sequential_19_31694sequential_19_31696*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309832'
%sequential_19/StatefulPartitionedCall¨
IdentityIdentity.sequential_19/StatefulPartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
)
_user_specified_nameconv2d_27_input:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_23_input
­
L
0__inference_max_pooling2d_23_layer_call_fn_30811

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_308052
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í	
Ü
C__inference_dense_23_layer_call_and_return_conditional_losses_31549

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs

¨
5__inference_batch_normalization_5_layer_call_fn_32683

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_306322
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

£
H__inference_sequential_19_layer_call_and_return_conditional_losses_33161

inputs+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource
identity¢dense_24/BiasAdd/ReadVariableOp¢dense_24/MatMul/ReadVariableOp¢dense_25/BiasAdd/ReadVariableOp¢dense_25/MatMul/ReadVariableOpj
activation_22/ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
activation_22/Relu¨
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_24/MatMul/ReadVariableOp¨
dense_24/MatMulMatMul activation_22/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_24/MatMul§
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_24/BiasAdd/ReadVariableOp¥
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_24/BiasAdd}
activation_23/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
activation_23/Relu¨
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_25/MatMul/ReadVariableOp¨
dense_25/MatMulMatMul activation_23/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/MatMul§
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOp¥
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/BiasAdd|
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/Softmaxô
IdentityIdentitydense_25/Softmax:softmax:0 ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
õ	
Ü
C__inference_dense_25_layer_call_and_return_conditional_losses_33256

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
5
Å
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32788

inputs
assignmovingavg_32761
assignmovingavg_1_32768)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32761*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/32761*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_32761*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32761*
_output_shapes	
:2
AssignMovingAvg/subâ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32761*
_output_shapes	
:2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_32761AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32761*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32768*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/32768*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_32768*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32768*
_output_shapes	
:2
AssignMovingAvg_1/subì
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32768*
_output_shapes	
:2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_32768AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32768*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Î
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4
Å
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32553

inputs
assignmovingavg_32526
assignmovingavg_1_32533)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¬
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32526*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/32526*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_32526*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32526*
_output_shapes
:@2
AssignMovingAvg/subá
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32526*
_output_shapes
:@2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_32526AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32526*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32533*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/32533*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_32533*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32533*
_output_shapes
:@2
AssignMovingAvg_1/subë
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32533*
_output_shapes
:@2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_32533AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32533*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/add_1»
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ00@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
	
Ü
C__inference_dense_24_layer_call_and_return_conditional_losses_30862

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
´
F
*__inference_dropout_25_layer_call_fn_33079

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_314842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­
L
0__inference_max_pooling2d_22_layer_call_fn_30655

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_306492
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÆÏ
à
 __inference__wrapped_model_30499
conv2d_27_input
dense_23_input4
0model_5_conv2d_27_conv2d_readvariableop_resource5
1model_5_conv2d_27_biasadd_readvariableop_resourceC
?model_5_batch_normalization_5_batchnorm_readvariableop_resourceG
Cmodel_5_batch_normalization_5_batchnorm_mul_readvariableop_resourceE
Amodel_5_batch_normalization_5_batchnorm_readvariableop_1_resourceE
Amodel_5_batch_normalization_5_batchnorm_readvariableop_2_resource4
0model_5_conv2d_28_conv2d_readvariableop_resource5
1model_5_conv2d_28_biasadd_readvariableop_resource4
0model_5_conv2d_29_conv2d_readvariableop_resource5
1model_5_conv2d_29_biasadd_readvariableop_resourceC
?model_5_batch_normalization_6_batchnorm_readvariableop_resourceG
Cmodel_5_batch_normalization_6_batchnorm_mul_readvariableop_resourceE
Amodel_5_batch_normalization_6_batchnorm_readvariableop_1_resourceE
Amodel_5_batch_normalization_6_batchnorm_readvariableop_2_resource4
0model_5_conv2d_30_conv2d_readvariableop_resource5
1model_5_conv2d_30_biasadd_readvariableop_resource4
0model_5_conv2d_31_conv2d_readvariableop_resource5
1model_5_conv2d_31_biasadd_readvariableop_resource4
0model_5_conv2d_32_conv2d_readvariableop_resource5
1model_5_conv2d_32_biasadd_readvariableop_resource3
/model_5_dense_22_matmul_readvariableop_resource4
0model_5_dense_22_biasadd_readvariableop_resource3
/model_5_dense_23_matmul_readvariableop_resource4
0model_5_dense_23_biasadd_readvariableop_resourceA
=model_5_sequential_19_dense_24_matmul_readvariableop_resourceB
>model_5_sequential_19_dense_24_biasadd_readvariableop_resourceA
=model_5_sequential_19_dense_25_matmul_readvariableop_resourceB
>model_5_sequential_19_dense_25_biasadd_readvariableop_resource
identity¢6model_5/batch_normalization_5/batchnorm/ReadVariableOp¢8model_5/batch_normalization_5/batchnorm/ReadVariableOp_1¢8model_5/batch_normalization_5/batchnorm/ReadVariableOp_2¢:model_5/batch_normalization_5/batchnorm/mul/ReadVariableOp¢6model_5/batch_normalization_6/batchnorm/ReadVariableOp¢8model_5/batch_normalization_6/batchnorm/ReadVariableOp_1¢8model_5/batch_normalization_6/batchnorm/ReadVariableOp_2¢:model_5/batch_normalization_6/batchnorm/mul/ReadVariableOp¢(model_5/conv2d_27/BiasAdd/ReadVariableOp¢'model_5/conv2d_27/Conv2D/ReadVariableOp¢(model_5/conv2d_28/BiasAdd/ReadVariableOp¢'model_5/conv2d_28/Conv2D/ReadVariableOp¢(model_5/conv2d_29/BiasAdd/ReadVariableOp¢'model_5/conv2d_29/Conv2D/ReadVariableOp¢(model_5/conv2d_30/BiasAdd/ReadVariableOp¢'model_5/conv2d_30/Conv2D/ReadVariableOp¢(model_5/conv2d_31/BiasAdd/ReadVariableOp¢'model_5/conv2d_31/Conv2D/ReadVariableOp¢(model_5/conv2d_32/BiasAdd/ReadVariableOp¢'model_5/conv2d_32/Conv2D/ReadVariableOp¢'model_5/dense_22/BiasAdd/ReadVariableOp¢&model_5/dense_22/MatMul/ReadVariableOp¢'model_5/dense_23/BiasAdd/ReadVariableOp¢&model_5/dense_23/MatMul/ReadVariableOp¢5model_5/sequential_19/dense_24/BiasAdd/ReadVariableOp¢4model_5/sequential_19/dense_24/MatMul/ReadVariableOp¢5model_5/sequential_19/dense_25/BiasAdd/ReadVariableOp¢4model_5/sequential_19/dense_25/MatMul/ReadVariableOpË
'model_5/conv2d_27/Conv2D/ReadVariableOpReadVariableOp0model_5_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_5/conv2d_27/Conv2D/ReadVariableOpâ
model_5/conv2d_27/Conv2DConv2Dconv2d_27_input/model_5/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
model_5/conv2d_27/Conv2DÂ
(model_5/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp1model_5_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_5/conv2d_27/BiasAdd/ReadVariableOpÐ
model_5/conv2d_27/BiasAddBiasAdd!model_5/conv2d_27/Conv2D:output:00model_5/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
model_5/conv2d_27/BiasAdd
model_5/conv2d_27/ReluRelu"model_5/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
model_5/conv2d_27/Reluì
6model_5/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp?model_5_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype028
6model_5/batch_normalization_5/batchnorm/ReadVariableOp§
-model_5/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2/
-model_5/batch_normalization_5/batchnorm/add/y
+model_5/batch_normalization_5/batchnorm/addAddV2>model_5/batch_normalization_5/batchnorm/ReadVariableOp:value:06model_5/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2-
+model_5/batch_normalization_5/batchnorm/add½
-model_5/batch_normalization_5/batchnorm/RsqrtRsqrt/model_5/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:@2/
-model_5/batch_normalization_5/batchnorm/Rsqrtø
:model_5/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_5_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02<
:model_5/batch_normalization_5/batchnorm/mul/ReadVariableOpý
+model_5/batch_normalization_5/batchnorm/mulMul1model_5/batch_normalization_5/batchnorm/Rsqrt:y:0Bmodel_5/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2-
+model_5/batch_normalization_5/batchnorm/mulö
-model_5/batch_normalization_5/batchnorm/mul_1Mul$model_5/conv2d_27/Relu:activations:0/model_5/batch_normalization_5/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2/
-model_5/batch_normalization_5/batchnorm/mul_1ò
8model_5/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_5_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8model_5/batch_normalization_5/batchnorm/ReadVariableOp_1ý
-model_5/batch_normalization_5/batchnorm/mul_2Mul@model_5/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0/model_5/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:@2/
-model_5/batch_normalization_5/batchnorm/mul_2ò
8model_5/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_5_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02:
8model_5/batch_normalization_5/batchnorm/ReadVariableOp_2û
+model_5/batch_normalization_5/batchnorm/subSub@model_5/batch_normalization_5/batchnorm/ReadVariableOp_2:value:01model_5/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2-
+model_5/batch_normalization_5/batchnorm/sub
-model_5/batch_normalization_5/batchnorm/add_1AddV21model_5/batch_normalization_5/batchnorm/mul_1:z:0/model_5/batch_normalization_5/batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2/
-model_5/batch_normalization_5/batchnorm/add_1Ë
'model_5/conv2d_28/Conv2D/ReadVariableOpReadVariableOp0model_5_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02)
'model_5/conv2d_28/Conv2D/ReadVariableOp
model_5/conv2d_28/Conv2DConv2D1model_5/batch_normalization_5/batchnorm/add_1:z:0/model_5/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
model_5/conv2d_28/Conv2DÂ
(model_5/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp1model_5_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_5/conv2d_28/BiasAdd/ReadVariableOpÐ
model_5/conv2d_28/BiasAddBiasAdd!model_5/conv2d_28/Conv2D:output:00model_5/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
model_5/conv2d_28/BiasAdd
model_5/conv2d_28/ReluRelu"model_5/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
model_5/conv2d_28/Reluë
 model_5/max_pooling2d_22/MaxPoolMaxPool$model_5/conv2d_28/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2"
 model_5/max_pooling2d_22/MaxPool«
model_5/dropout_22/IdentityIdentity)model_5/max_pooling2d_22/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_5/dropout_22/IdentityÌ
'model_5/conv2d_29/Conv2D/ReadVariableOpReadVariableOp0model_5_conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'model_5/conv2d_29/Conv2D/ReadVariableOpø
model_5/conv2d_29/Conv2DConv2D$model_5/dropout_22/Identity:output:0/model_5/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model_5/conv2d_29/Conv2DÃ
(model_5/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp1model_5_conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_5/conv2d_29/BiasAdd/ReadVariableOpÑ
model_5/conv2d_29/BiasAddBiasAdd!model_5/conv2d_29/Conv2D:output:00model_5/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/conv2d_29/BiasAdd
model_5/conv2d_29/ReluRelu"model_5/conv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/conv2d_29/Reluí
6model_5/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp?model_5_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype028
6model_5/batch_normalization_6/batchnorm/ReadVariableOp§
-model_5/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2/
-model_5/batch_normalization_6/batchnorm/add/y
+model_5/batch_normalization_6/batchnorm/addAddV2>model_5/batch_normalization_6/batchnorm/ReadVariableOp:value:06model_5/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2-
+model_5/batch_normalization_6/batchnorm/add¾
-model_5/batch_normalization_6/batchnorm/RsqrtRsqrt/model_5/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:2/
-model_5/batch_normalization_6/batchnorm/Rsqrtù
:model_5/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_5_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02<
:model_5/batch_normalization_6/batchnorm/mul/ReadVariableOpþ
+model_5/batch_normalization_6/batchnorm/mulMul1model_5/batch_normalization_6/batchnorm/Rsqrt:y:0Bmodel_5/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2-
+model_5/batch_normalization_6/batchnorm/mul÷
-model_5/batch_normalization_6/batchnorm/mul_1Mul$model_5/conv2d_29/Relu:activations:0/model_5/batch_normalization_6/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-model_5/batch_normalization_6/batchnorm/mul_1ó
8model_5/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_5_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02:
8model_5/batch_normalization_6/batchnorm/ReadVariableOp_1þ
-model_5/batch_normalization_6/batchnorm/mul_2Mul@model_5/batch_normalization_6/batchnorm/ReadVariableOp_1:value:0/model_5/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:2/
-model_5/batch_normalization_6/batchnorm/mul_2ó
8model_5/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_5_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02:
8model_5/batch_normalization_6/batchnorm/ReadVariableOp_2ü
+model_5/batch_normalization_6/batchnorm/subSub@model_5/batch_normalization_6/batchnorm/ReadVariableOp_2:value:01model_5/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2-
+model_5/batch_normalization_6/batchnorm/sub
-model_5/batch_normalization_6/batchnorm/add_1AddV21model_5/batch_normalization_6/batchnorm/mul_1:z:0/model_5/batch_normalization_6/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-model_5/batch_normalization_6/batchnorm/add_1Í
'model_5/conv2d_30/Conv2D/ReadVariableOpReadVariableOp0model_5_conv2d_30_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'model_5/conv2d_30/Conv2D/ReadVariableOp
model_5/conv2d_30/Conv2DConv2D1model_5/batch_normalization_6/batchnorm/add_1:z:0/model_5/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model_5/conv2d_30/Conv2DÃ
(model_5/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp1model_5_conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_5/conv2d_30/BiasAdd/ReadVariableOpÑ
model_5/conv2d_30/BiasAddBiasAdd!model_5/conv2d_30/Conv2D:output:00model_5/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/conv2d_30/BiasAdd
model_5/conv2d_30/ReluRelu"model_5/conv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/conv2d_30/Relu¡
model_5/activation_20/ReluRelu$model_5/conv2d_30/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/activation_20/Reluð
 model_5/max_pooling2d_23/MaxPoolMaxPool(model_5/activation_20/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2"
 model_5/max_pooling2d_23/MaxPool¬
model_5/dropout_23/IdentityIdentity)model_5/max_pooling2d_23/MaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/dropout_23/IdentityÍ
'model_5/conv2d_31/Conv2D/ReadVariableOpReadVariableOp0model_5_conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02)
'model_5/conv2d_31/Conv2D/ReadVariableOpø
model_5/conv2d_31/Conv2DConv2D$model_5/dropout_23/Identity:output:0/model_5/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model_5/conv2d_31/Conv2DÃ
(model_5/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp1model_5_conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_5/conv2d_31/BiasAdd/ReadVariableOpÑ
model_5/conv2d_31/BiasAddBiasAdd!model_5/conv2d_31/Conv2D:output:00model_5/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/conv2d_31/BiasAdd
model_5/conv2d_31/ReluRelu"model_5/conv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/conv2d_31/Relu¡
model_5/activation_21/ReluRelu$model_5/conv2d_31/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/activation_21/Reluð
 model_5/max_pooling2d_24/MaxPoolMaxPool(model_5/activation_21/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2"
 model_5/max_pooling2d_24/MaxPool¬
model_5/dropout_24/IdentityIdentity)model_5/max_pooling2d_24/MaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_5/dropout_24/IdentityÌ
'model_5/conv2d_32/Conv2D/ReadVariableOpReadVariableOp0model_5_conv2d_32_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02)
'model_5/conv2d_32/Conv2D/ReadVariableOpø
model_5/conv2d_32/Conv2DConv2D$model_5/dropout_24/Identity:output:0/model_5/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
model_5/conv2d_32/Conv2DÂ
(model_5/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp1model_5_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_5/conv2d_32/BiasAdd/ReadVariableOpÐ
model_5/conv2d_32/BiasAddBiasAdd!model_5/conv2d_32/Conv2D:output:00model_5/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_5/conv2d_32/BiasAdd
model_5/conv2d_32/ReluRelu"model_5/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_5/conv2d_32/Reluë
 model_5/max_pooling2d_25/MaxPoolMaxPool$model_5/conv2d_32/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2"
 model_5/max_pooling2d_25/MaxPool«
model_5/dropout_25/IdentityIdentity)model_5/max_pooling2d_25/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_5/dropout_25/Identity
model_5/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
model_5/flatten_6/Const»
model_5/flatten_6/ReshapeReshape$model_5/dropout_25/Identity:output:0 model_5/flatten_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_5/flatten_6/ReshapeÀ
&model_5/dense_22/MatMul/ReadVariableOpReadVariableOp/model_5_dense_22_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02(
&model_5/dense_22/MatMul/ReadVariableOpÂ
model_5/dense_22/MatMulMatMul"model_5/flatten_6/Reshape:output:0.model_5/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/dense_22/MatMul¿
'model_5/dense_22/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'model_5/dense_22/BiasAdd/ReadVariableOpÅ
model_5/dense_22/BiasAddBiasAdd!model_5/dense_22/MatMul:product:0/model_5/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/dense_22/BiasAdd
model_5/dense_22/ReluRelu!model_5/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/dense_22/ReluÀ
&model_5/dense_23/MatMul/ReadVariableOpReadVariableOp/model_5_dense_23_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02(
&model_5/dense_23/MatMul/ReadVariableOp®
model_5/dense_23/MatMulMatMuldense_23_input.model_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/dense_23/MatMul¿
'model_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'model_5/dense_23/BiasAdd/ReadVariableOpÅ
model_5/dense_23/BiasAddBiasAdd!model_5/dense_23/MatMul:product:0/model_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/dense_23/BiasAdd
model_5/dense_23/ReluRelu!model_5/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/dense_23/Relu«
model_5/add_6/addAddV2#model_5/dense_22/Relu:activations:0#model_5/dense_23/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_5/add_6/add¥
(model_5/sequential_19/activation_22/ReluRelumodel_5/add_6/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(model_5/sequential_19/activation_22/Reluê
4model_5/sequential_19/dense_24/MatMul/ReadVariableOpReadVariableOp=model_5_sequential_19_dense_24_matmul_readvariableop_resource*
_output_shapes

:  *
dtype026
4model_5/sequential_19/dense_24/MatMul/ReadVariableOp
%model_5/sequential_19/dense_24/MatMulMatMul6model_5/sequential_19/activation_22/Relu:activations:0<model_5/sequential_19/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%model_5/sequential_19/dense_24/MatMulé
5model_5/sequential_19/dense_24/BiasAdd/ReadVariableOpReadVariableOp>model_5_sequential_19_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5model_5/sequential_19/dense_24/BiasAdd/ReadVariableOpý
&model_5/sequential_19/dense_24/BiasAddBiasAdd/model_5/sequential_19/dense_24/MatMul:product:0=model_5/sequential_19/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&model_5/sequential_19/dense_24/BiasAdd¿
(model_5/sequential_19/activation_23/ReluRelu/model_5/sequential_19/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(model_5/sequential_19/activation_23/Reluê
4model_5/sequential_19/dense_25/MatMul/ReadVariableOpReadVariableOp=model_5_sequential_19_dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype026
4model_5/sequential_19/dense_25/MatMul/ReadVariableOp
%model_5/sequential_19/dense_25/MatMulMatMul6model_5/sequential_19/activation_23/Relu:activations:0<model_5/sequential_19/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%model_5/sequential_19/dense_25/MatMulé
5model_5/sequential_19/dense_25/BiasAdd/ReadVariableOpReadVariableOp>model_5_sequential_19_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5model_5/sequential_19/dense_25/BiasAdd/ReadVariableOpý
&model_5/sequential_19/dense_25/BiasAddBiasAdd/model_5/sequential_19/dense_25/MatMul:product:0=model_5/sequential_19/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_5/sequential_19/dense_25/BiasAdd¾
&model_5/sequential_19/dense_25/SoftmaxSoftmax/model_5/sequential_19/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_5/sequential_19/dense_25/SoftmaxÞ
IdentityIdentity0model_5/sequential_19/dense_25/Softmax:softmax:07^model_5/batch_normalization_5/batchnorm/ReadVariableOp9^model_5/batch_normalization_5/batchnorm/ReadVariableOp_19^model_5/batch_normalization_5/batchnorm/ReadVariableOp_2;^model_5/batch_normalization_5/batchnorm/mul/ReadVariableOp7^model_5/batch_normalization_6/batchnorm/ReadVariableOp9^model_5/batch_normalization_6/batchnorm/ReadVariableOp_19^model_5/batch_normalization_6/batchnorm/ReadVariableOp_2;^model_5/batch_normalization_6/batchnorm/mul/ReadVariableOp)^model_5/conv2d_27/BiasAdd/ReadVariableOp(^model_5/conv2d_27/Conv2D/ReadVariableOp)^model_5/conv2d_28/BiasAdd/ReadVariableOp(^model_5/conv2d_28/Conv2D/ReadVariableOp)^model_5/conv2d_29/BiasAdd/ReadVariableOp(^model_5/conv2d_29/Conv2D/ReadVariableOp)^model_5/conv2d_30/BiasAdd/ReadVariableOp(^model_5/conv2d_30/Conv2D/ReadVariableOp)^model_5/conv2d_31/BiasAdd/ReadVariableOp(^model_5/conv2d_31/Conv2D/ReadVariableOp)^model_5/conv2d_32/BiasAdd/ReadVariableOp(^model_5/conv2d_32/Conv2D/ReadVariableOp(^model_5/dense_22/BiasAdd/ReadVariableOp'^model_5/dense_22/MatMul/ReadVariableOp(^model_5/dense_23/BiasAdd/ReadVariableOp'^model_5/dense_23/MatMul/ReadVariableOp6^model_5/sequential_19/dense_24/BiasAdd/ReadVariableOp5^model_5/sequential_19/dense_24/MatMul/ReadVariableOp6^model_5/sequential_19/dense_25/BiasAdd/ReadVariableOp5^model_5/sequential_19/dense_25/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::2p
6model_5/batch_normalization_5/batchnorm/ReadVariableOp6model_5/batch_normalization_5/batchnorm/ReadVariableOp2t
8model_5/batch_normalization_5/batchnorm/ReadVariableOp_18model_5/batch_normalization_5/batchnorm/ReadVariableOp_12t
8model_5/batch_normalization_5/batchnorm/ReadVariableOp_28model_5/batch_normalization_5/batchnorm/ReadVariableOp_22x
:model_5/batch_normalization_5/batchnorm/mul/ReadVariableOp:model_5/batch_normalization_5/batchnorm/mul/ReadVariableOp2p
6model_5/batch_normalization_6/batchnorm/ReadVariableOp6model_5/batch_normalization_6/batchnorm/ReadVariableOp2t
8model_5/batch_normalization_6/batchnorm/ReadVariableOp_18model_5/batch_normalization_6/batchnorm/ReadVariableOp_12t
8model_5/batch_normalization_6/batchnorm/ReadVariableOp_28model_5/batch_normalization_6/batchnorm/ReadVariableOp_22x
:model_5/batch_normalization_6/batchnorm/mul/ReadVariableOp:model_5/batch_normalization_6/batchnorm/mul/ReadVariableOp2T
(model_5/conv2d_27/BiasAdd/ReadVariableOp(model_5/conv2d_27/BiasAdd/ReadVariableOp2R
'model_5/conv2d_27/Conv2D/ReadVariableOp'model_5/conv2d_27/Conv2D/ReadVariableOp2T
(model_5/conv2d_28/BiasAdd/ReadVariableOp(model_5/conv2d_28/BiasAdd/ReadVariableOp2R
'model_5/conv2d_28/Conv2D/ReadVariableOp'model_5/conv2d_28/Conv2D/ReadVariableOp2T
(model_5/conv2d_29/BiasAdd/ReadVariableOp(model_5/conv2d_29/BiasAdd/ReadVariableOp2R
'model_5/conv2d_29/Conv2D/ReadVariableOp'model_5/conv2d_29/Conv2D/ReadVariableOp2T
(model_5/conv2d_30/BiasAdd/ReadVariableOp(model_5/conv2d_30/BiasAdd/ReadVariableOp2R
'model_5/conv2d_30/Conv2D/ReadVariableOp'model_5/conv2d_30/Conv2D/ReadVariableOp2T
(model_5/conv2d_31/BiasAdd/ReadVariableOp(model_5/conv2d_31/BiasAdd/ReadVariableOp2R
'model_5/conv2d_31/Conv2D/ReadVariableOp'model_5/conv2d_31/Conv2D/ReadVariableOp2T
(model_5/conv2d_32/BiasAdd/ReadVariableOp(model_5/conv2d_32/BiasAdd/ReadVariableOp2R
'model_5/conv2d_32/Conv2D/ReadVariableOp'model_5/conv2d_32/Conv2D/ReadVariableOp2R
'model_5/dense_22/BiasAdd/ReadVariableOp'model_5/dense_22/BiasAdd/ReadVariableOp2P
&model_5/dense_22/MatMul/ReadVariableOp&model_5/dense_22/MatMul/ReadVariableOp2R
'model_5/dense_23/BiasAdd/ReadVariableOp'model_5/dense_23/BiasAdd/ReadVariableOp2P
&model_5/dense_23/MatMul/ReadVariableOp&model_5/dense_23/MatMul/ReadVariableOp2n
5model_5/sequential_19/dense_24/BiasAdd/ReadVariableOp5model_5/sequential_19/dense_24/BiasAdd/ReadVariableOp2l
4model_5/sequential_19/dense_24/MatMul/ReadVariableOp4model_5/sequential_19/dense_24/MatMul/ReadVariableOp2n
5model_5/sequential_19/dense_25/BiasAdd/ReadVariableOp5model_5/sequential_19/dense_25/BiasAdd/ReadVariableOp2l
4model_5/sequential_19/dense_25/MatMul/ReadVariableOp4model_5/sequential_19/dense_25/MatMul/ReadVariableOp:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
)
_user_specified_nameconv2d_27_input:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_23_input
è
c
E__inference_dropout_22_layer_call_and_return_conditional_losses_31164

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
d
H__inference_activation_21_layer_call_and_return_conditional_losses_31400

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
}
(__inference_dense_24_layer_call_fn_33235

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_308622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
5
Å
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30599

inputs
assignmovingavg_30572
assignmovingavg_1_30579)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/30572*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/30572*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_30572*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/30572*
_output_shapes
:@2
AssignMovingAvg/subá
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/30572*
_output_shapes
:@2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_30572AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/30572*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/30579*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/30579*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_30579*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/30579*
_output_shapes
:@2
AssignMovingAvg_1/subë
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/30579*
_output_shapes
:@2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_30579AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/30579*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1Í
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

~
)__inference_conv2d_30_layer_call_fn_32938

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_313082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
c
*__inference_dropout_24_layer_call_fn_33027

inputs
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_314212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_33069

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
}
(__inference_dense_23_layer_call_fn_33130

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_315492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Ì
­
-__inference_sequential_19_layer_call_fn_30965
activation_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallactivation_22_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_309542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-
_user_specified_nameactivation_22_input
±4
Å
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32872

inputs
assignmovingavg_32845
assignmovingavg_1_32852)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient­
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32845*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/32845*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_32845*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32845*
_output_shapes	
:2
AssignMovingAvg/subâ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/32845*
_output_shapes	
:2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_32845AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/32845*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32852*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/32852*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_32852*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32852*
_output_shapes	
:2
AssignMovingAvg_1/subì
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/32852*
_output_shapes	
:2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_32852AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/32852*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¼
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
d
E__inference_dropout_23_layer_call_and_return_conditional_losses_32960

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape½
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2
dropout/GreaterEqual/yÇ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ	
Ü
C__inference_dense_25_layer_call_and_return_conditional_losses_30902

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ï
ý
H__inference_sequential_19_layer_call_and_return_conditional_losses_30983

inputs
dense_24_30971
dense_24_30973
dense_25_30977
dense_25_30979
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCallâ
activation_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_308442
activation_22/PartitionedCall±
 dense_24/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_24_30971dense_24_30973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_308622"
 dense_24/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_308832
activation_23/PartitionedCall±
 dense_25/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_25_30977dense_25_30979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_309022"
 dense_25/StatefulPartitionedCallÃ
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ì
c
E__inference_dropout_23_layer_call_and_return_conditional_losses_31355

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_30805

inputs
identity¶
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
E
)__inference_flatten_6_layer_call_fn_33090

inputs
identityÂ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_315032
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Î

Ý
D__inference_conv2d_28_layer_call_and_return_conditional_losses_32694

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ00@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
¡
¨
5__inference_batch_normalization_6_layer_call_fn_32834

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_307882
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
d
H__inference_activation_20_layer_call_and_return_conditional_losses_31329

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
~
)__inference_conv2d_32_layer_call_fn_33052

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_314502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_30829

inputs
identity¶
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
°
'__inference_model_5_layer_call_fn_31993
conv2d_27_input
dense_23_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallconv2d_27_inputdense_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_5_layer_call_and_return_conditional_losses_319342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*³
_input_shapes¡
:ÿÿÿÿÿÿÿÿÿ00:ÿÿÿÿÿÿÿÿÿ	::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
)
_user_specified_nameconv2d_27_input:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_23_input
ü
~
)__inference_conv2d_28_layer_call_fn_32703

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_311302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ00@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
ì
c
E__inference_dropout_23_layer_call_and_return_conditional_losses_32965

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò

Ý
D__inference_conv2d_32_layer_call_and_return_conditional_losses_31450

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±4
Å
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_31241

inputs
assignmovingavg_31214
assignmovingavg_1_31221)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient­
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/31214*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decayÜ
AssignMovingAvg/CastCastAssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*(
_class
loc:@AssignMovingAvg/31214*
_output_shapes
: 2
AssignMovingAvg/Cast
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_31214*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/31214*
_output_shapes	
:2
AssignMovingAvg/subâ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/31214*
_output_shapes	
:2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_31214AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/31214*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/31221*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayä
AssignMovingAvg_1/CastCast AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0**
_class 
loc:@AssignMovingAvg_1/31221*
_output_shapes
: 2
AssignMovingAvg_1/Cast
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_31221*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/31221*
_output_shapes	
:2
AssignMovingAvg_1/subì
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0AssignMovingAvg_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/31221*
_output_shapes	
:2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_31221AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/31221*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¼
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í	
Ü
C__inference_dense_22_layer_call_and_return_conditional_losses_33101

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶
d
H__inference_activation_23_layer_call_and_return_conditional_losses_33240

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ö

H__inference_sequential_19_layer_call_and_return_conditional_losses_30935
activation_22_input
dense_24_30923
dense_24_30925
dense_25_30929
dense_25_30931
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCallï
activation_22/PartitionedCallPartitionedCallactivation_22_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_22_layer_call_and_return_conditional_losses_308442
activation_22/PartitionedCall±
 dense_24/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_24_30923dense_24_30925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_308622"
 dense_24/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_308832
activation_23/PartitionedCall±
 dense_25/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_25_30929dense_25_30931*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_309022"
 dense_25/StatefulPartitionedCallÃ
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:\ X
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-
_user_specified_nameactivation_22_input
Ë
d
E__inference_dropout_22_layer_call_and_return_conditional_losses_32715

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2·mÛ¶mÛö?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¼
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2333333Ó?2
dropout/GreaterEqual/yÆ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ë
d
E__inference_dropout_25_layer_call_and_return_conditional_losses_31479

inputs
identityg
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ô?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¼
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype02&
$dropout/random_uniform/RandomUniformy
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB 2É?2
dropout/GreaterEqual/yÆ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶
d
H__inference_activation_22_layer_call_and_return_conditional_losses_33211

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

¨
5__inference_batch_normalization_6_layer_call_fn_32821

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_307552
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

~
)__inference_conv2d_31_layer_call_fn_32995

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_313792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ

P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32573

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpk
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ü©ñÒMbP?2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2
batchnorm/add_1ã
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ00@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs
è
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_31484

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
×

Ý
D__inference_conv2d_30_layer_call_and_return_conditional_losses_31308

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu 
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¨
5__inference_batch_normalization_5_layer_call_fn_32599

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_310832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ00@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_30817

inputs
identity¶
MaxPoolMaxPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultÿ
S
conv2d_27_input@
!serving_default_conv2d_27_input:0ÿÿÿÿÿÿÿÿÿ00
I
dense_23_input7
 serving_default_dense_23_input:0ÿÿÿÿÿÿÿÿÿ	A
sequential_190
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:èË
°Í
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer_with_weights-9
layer-22
layer-23
layer_with_weights-10
layer-24
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+ú&call_and_return_all_conditional_losses
û__call__
ü_default_save_signature"îÆ
_tf_keras_networkÑÆ{"class_name": "Functional", "name": "model_5", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "conv2d_27_input"}, "name": "conv2d_27_input", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_27", "inbound_nodes": [[["conv2d_27_input", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float64", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_5", "inbound_nodes": [[["conv2d_27", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_28", "inbound_nodes": [[["batch_normalization_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_22", "inbound_nodes": [[["conv2d_28", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_22", "trainable": true, "dtype": "float64", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_22", "inbound_nodes": [[["max_pooling2d_22", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float64", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_29", "inbound_nodes": [[["dropout_22", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float64", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_6", "inbound_nodes": [[["conv2d_29", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float64", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_30", "inbound_nodes": [[["batch_normalization_6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float64", "activation": "relu"}, "name": "activation_20", "inbound_nodes": [[["conv2d_30", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_23", "inbound_nodes": [[["activation_20", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_23", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_23", "inbound_nodes": [[["max_pooling2d_23", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float64", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_31", "inbound_nodes": [[["dropout_23", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float64", "activation": "relu"}, "name": "activation_21", "inbound_nodes": [[["conv2d_31", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_24", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_24", "inbound_nodes": [[["activation_21", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_24", "inbound_nodes": [[["max_pooling2d_24", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_32", "inbound_nodes": [[["dropout_24", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_25", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_25", "inbound_nodes": [[["conv2d_32", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_25", "inbound_nodes": [[["max_pooling2d_25", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float64", "data_format": "channels_last"}, "name": "flatten_6", "inbound_nodes": [[["dropout_25", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "dense_23_input"}, "name": "dense_23_input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float64", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_22", "inbound_nodes": [[["flatten_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float64", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_23", "inbound_nodes": [[["dense_23_input", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_6", "trainable": true, "dtype": "float64"}, "name": "add_6", "inbound_nodes": [[["dense_22", 0, 0, {}], ["dense_23", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "activation_22_input"}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float64", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float64", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "name": "sequential_19", "inbound_nodes": [[["add_6", 0, 0, {}]]]}], "input_layers": [["conv2d_27_input", 0, 0], ["dense_23_input", 0, 0]], "output_layers": [["sequential_19", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 9]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 48, 48, 1]}, {"class_name": "TensorShape", "items": [null, 9]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "conv2d_27_input"}, "name": "conv2d_27_input", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_27", "inbound_nodes": [[["conv2d_27_input", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float64", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_5", "inbound_nodes": [[["conv2d_27", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_28", "inbound_nodes": [[["batch_normalization_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_22", "inbound_nodes": [[["conv2d_28", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_22", "trainable": true, "dtype": "float64", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_22", "inbound_nodes": [[["max_pooling2d_22", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float64", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_29", "inbound_nodes": [[["dropout_22", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float64", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_6", "inbound_nodes": [[["conv2d_29", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float64", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_30", "inbound_nodes": [[["batch_normalization_6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float64", "activation": "relu"}, "name": "activation_20", "inbound_nodes": [[["conv2d_30", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_23", "inbound_nodes": [[["activation_20", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_23", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_23", "inbound_nodes": [[["max_pooling2d_23", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float64", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_31", "inbound_nodes": [[["dropout_23", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float64", "activation": "relu"}, "name": "activation_21", "inbound_nodes": [[["conv2d_31", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_24", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_24", "inbound_nodes": [[["activation_21", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_24", "inbound_nodes": [[["max_pooling2d_24", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_32", "inbound_nodes": [[["dropout_24", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_25", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_25", "inbound_nodes": [[["conv2d_32", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_25", "inbound_nodes": [[["max_pooling2d_25", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float64", "data_format": "channels_last"}, "name": "flatten_6", "inbound_nodes": [[["dropout_25", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "dense_23_input"}, "name": "dense_23_input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float64", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_22", "inbound_nodes": [[["flatten_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float64", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_23", "inbound_nodes": [[["dense_23_input", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_6", "trainable": true, "dtype": "float64"}, "name": "add_6", "inbound_nodes": [[["dense_22", 0, 0, {}], ["dense_23", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "activation_22_input"}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float64", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float64", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "name": "sequential_19", "inbound_nodes": [[["add_6", 0, 0, {}]]]}], "input_layers": [["conv2d_27_input", 0, 0], ["dense_23_input", 0, 0]], "output_layers": [["sequential_19", 1, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float64", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
"
_tf_keras_input_layeræ{"class_name": "InputLayer", "name": "conv2d_27_input", "dtype": "float64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "conv2d_27_input"}}
õ


 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
+ý&call_and_return_all_conditional_losses
þ__call__"Î	
_tf_keras_layer´	{"class_name": "Conv2D", "name": "conv2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_27", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}}
¼	
&axis
	'gamma
(beta
)moving_mean
*moving_variance
+regularization_losses
,	variables
-trainable_variables
.	keras_api
+ÿ&call_and_return_all_conditional_losses
__call__"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float64", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
ö	

/kernel
0bias
1regularization_losses
2	variables
3trainable_variables
4	keras_api
+&call_and_return_all_conditional_losses
__call__"Ï
_tf_keras_layerµ{"class_name": "Conv2D", "name": "conv2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_28", "trainable": true, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}

5regularization_losses
6	variables
7trainable_variables
8	keras_api
+&call_and_return_all_conditional_losses
__call__"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
é
9regularization_losses
:	variables
;trainable_variables
<	keras_api
+&call_and_return_all_conditional_losses
__call__"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_22", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_22", "trainable": true, "dtype": "float64", "rate": 0.3, "noise_shape": null, "seed": null}}
÷	

=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
+&call_and_return_all_conditional_losses
__call__"Ð
_tf_keras_layer¶{"class_name": "Conv2D", "name": "conv2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_29", "trainable": true, "dtype": "float64", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
¾	
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
+&call_and_return_all_conditional_losses
__call__"è
_tf_keras_layerÎ{"class_name": "BatchNormalization", "name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float64", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
ù	

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
+&call_and_return_all_conditional_losses
__call__"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_30", "trainable": true, "dtype": "float64", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
Ù
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
+&call_and_return_all_conditional_losses
__call__"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_20", "trainable": true, "dtype": "float64", "activation": "relu"}}

Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
+&call_and_return_all_conditional_losses
__call__"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
é
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
+&call_and_return_all_conditional_losses
__call__"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_23", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_23", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}}
ù	

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
+&call_and_return_all_conditional_losses
__call__"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_31", "trainable": true, "dtype": "float64", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 128]}}
Ù
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
+&call_and_return_all_conditional_losses
__call__"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_21", "trainable": true, "dtype": "float64", "activation": "relu"}}

hregularization_losses
i	variables
jtrainable_variables
k	keras_api
+&call_and_return_all_conditional_losses
__call__"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_24", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
é
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
+&call_and_return_all_conditional_losses
__call__"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_24", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_24", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}}
÷	

pkernel
qbias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
+&call_and_return_all_conditional_losses
__call__"Ð
_tf_keras_layer¶{"class_name": "Conv2D", "name": "conv2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_32", "trainable": true, "dtype": "float64", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 256]}}

vregularization_losses
w	variables
xtrainable_variables
y	keras_api
+&call_and_return_all_conditional_losses
__call__"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_25", "trainable": true, "dtype": "float64", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
é
zregularization_losses
{	variables
|trainable_variables
}	keras_api
+&call_and_return_all_conditional_losses
 __call__"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_25", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_25", "trainable": true, "dtype": "float64", "rate": 0.2, "noise_shape": null, "seed": null}}
ê
~regularization_losses
	variables
trainable_variables
	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_6", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_6", "trainable": true, "dtype": "float64", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
÷"ô
_tf_keras_input_layerÔ{"class_name": "InputLayer", "name": "dense_23_input", "dtype": "float64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "dense_23_input"}}
ú
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
+£&call_and_return_all_conditional_losses
¤__call__"Í
_tf_keras_layer³{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "dtype": "float64", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
é
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
+¥&call_and_return_all_conditional_losses
¦__call__"¼
_tf_keras_layer¢{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float64", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}}
¯
regularization_losses
	variables
trainable_variables
	keras_api
+§&call_and_return_all_conditional_losses
¨__call__"
_tf_keras_layer{"class_name": "Add", "name": "add_6", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_6", "trainable": true, "dtype": "float64"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32]}, {"class_name": "TensorShape", "items": [null, 32]}]}
¸
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
regularization_losses
	variables
trainable_variables
	keras_api
+©&call_and_return_all_conditional_losses
ª__call__"µ
_tf_keras_sequential{"class_name": "Sequential", "name": "sequential_19", "trainable": true, "expects_training_arg": true, "dtype": "float64", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "activation_22_input"}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float64", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float64", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "activation_22_input"}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float64", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float64", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float64", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
È
	iter
beta_1
beta_2

decay
learning_rate mÊ!mË'mÌ(mÍ/mÎ0mÏ=mÐ>mÑDmÒEmÓLmÔMmÕ^mÖ_m×pmØqmÙ	mÚ	mÛ	mÜ	mÝ	mÞ	 mß	¡mà	¢má vâ!vã'vä(vå/væ0vç=vè>véDvêEvëLvìMví^vî_vïpvðqvñ	vò	vó	vô	võ	vö	 v÷	¡vø	¢vù"
	optimizer
 "
trackable_list_wrapper
þ
 0
!1
'2
(3
)4
*5
/6
07
=8
>9
D10
E11
F12
G13
L14
M15
^16
_17
p18
q19
20
21
22
23
24
 25
¡26
¢27"
trackable_list_wrapper
Þ
 0
!1
'2
(3
/4
05
=6
>7
D8
E9
L10
M11
^12
_13
p14
q15
16
17
18
19
20
 21
¡22
¢23"
trackable_list_wrapper
Ó
regularization_losses
 £layer_regularization_losses
¤layer_metrics
¥metrics
	variables
¦layers
§non_trainable_variables
trainable_variables
û__call__
ü_default_save_signature
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
-
«serving_default"
signature_map
*:(@2conv2d_27/kernel
:@2conv2d_27/bias
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
µ
"regularization_losses
 ¨layer_regularization_losses
©layer_metrics
ªmetrics
#	variables
«layers
¬non_trainable_variables
$trainable_variables
þ__call__
+ý&call_and_return_all_conditional_losses
'ý"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_5/gamma
(:&@2batch_normalization_5/beta
1:/@ (2!batch_normalization_5/moving_mean
5:3@ (2%batch_normalization_5/moving_variance
 "
trackable_list_wrapper
<
'0
(1
)2
*3"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
µ
+regularization_losses
 ­layer_regularization_losses
®layer_metrics
¯metrics
,	variables
°layers
±non_trainable_variables
-trainable_variables
__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_28/kernel
:@2conv2d_28/bias
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
µ
1regularization_losses
 ²layer_regularization_losses
³layer_metrics
´metrics
2	variables
µlayers
¶non_trainable_variables
3trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
5regularization_losses
 ·layer_regularization_losses
¸layer_metrics
¹metrics
6	variables
ºlayers
»non_trainable_variables
7trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
9regularization_losses
 ¼layer_regularization_losses
½layer_metrics
¾metrics
:	variables
¿layers
Ànon_trainable_variables
;trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_29/kernel
:2conv2d_29/bias
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
µ
?regularization_losses
 Álayer_regularization_losses
Âlayer_metrics
Ãmetrics
@	variables
Älayers
Ånon_trainable_variables
Atrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_6/gamma
):'2batch_normalization_6/beta
2:0 (2!batch_normalization_6/moving_mean
6:4 (2%batch_normalization_6/moving_variance
 "
trackable_list_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
µ
Hregularization_losses
 Ælayer_regularization_losses
Çlayer_metrics
Èmetrics
I	variables
Élayers
Ênon_trainable_variables
Jtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_30/kernel
:2conv2d_30/bias
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
µ
Nregularization_losses
 Ëlayer_regularization_losses
Ìlayer_metrics
Ímetrics
O	variables
Îlayers
Ïnon_trainable_variables
Ptrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Rregularization_losses
 Ðlayer_regularization_losses
Ñlayer_metrics
Òmetrics
S	variables
Ólayers
Ônon_trainable_variables
Ttrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Vregularization_losses
 Õlayer_regularization_losses
Ölayer_metrics
×metrics
W	variables
Ølayers
Ùnon_trainable_variables
Xtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Zregularization_losses
 Úlayer_regularization_losses
Ûlayer_metrics
Ümetrics
[	variables
Ýlayers
Þnon_trainable_variables
\trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_31/kernel
:2conv2d_31/bias
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
µ
`regularization_losses
 ßlayer_regularization_losses
àlayer_metrics
ámetrics
a	variables
âlayers
ãnon_trainable_variables
btrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
dregularization_losses
 älayer_regularization_losses
ålayer_metrics
æmetrics
e	variables
çlayers
ènon_trainable_variables
ftrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
hregularization_losses
 élayer_regularization_losses
êlayer_metrics
ëmetrics
i	variables
ìlayers
ínon_trainable_variables
jtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
lregularization_losses
 îlayer_regularization_losses
ïlayer_metrics
ðmetrics
m	variables
ñlayers
ònon_trainable_variables
ntrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_32/kernel
:@2conv2d_32/bias
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
µ
rregularization_losses
 ólayer_regularization_losses
ôlayer_metrics
õmetrics
s	variables
ölayers
÷non_trainable_variables
ttrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
vregularization_losses
 ølayer_regularization_losses
ùlayer_metrics
úmetrics
w	variables
ûlayers
ünon_trainable_variables
xtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
zregularization_losses
 ýlayer_regularization_losses
þlayer_metrics
ÿmetrics
{	variables
layers
non_trainable_variables
|trainable_variables
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¶
~regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_22/kernel
: 2dense_22/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
¸
regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
¤__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
!:	 2dense_23/kernel
: 2dense_23/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
¸
regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
¦__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
 layer_regularization_losses
layer_metrics
metrics
	variables
layers
non_trainable_variables
trainable_variables
¨__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
Ý
regularization_losses
	variables
trainable_variables
	keras_api
+¬&call_and_return_all_conditional_losses
­__call__"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_22", "trainable": true, "dtype": "float64", "activation": "relu"}}
ü
kernel
	 bias
regularization_losses
	variables
trainable_variables
	keras_api
+®&call_and_return_all_conditional_losses
¯__call__"Ï
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_24", "trainable": true, "dtype": "float64", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
Ý
regularization_losses
	variables
 trainable_variables
¡	keras_api
+°&call_and_return_all_conditional_losses
±__call__"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_23", "trainable": true, "dtype": "float64", "activation": "relu"}}
ü
¡kernel
	¢bias
¢regularization_losses
£	variables
¤trainable_variables
¥	keras_api
+²&call_and_return_all_conditional_losses
³__call__"Ï
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float64", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_25", "trainable": true, "dtype": "float64", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
 "
trackable_list_wrapper
@
0
 1
¡2
¢3"
trackable_list_wrapper
@
0
 1
¡2
¢3"
trackable_list_wrapper
¸
regularization_losses
 ¦layer_regularization_losses
§layer_metrics
¨metrics
	variables
©layers
ªnon_trainable_variables
trainable_variables
ª__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
!:  2dense_24/kernel
: 2dense_24/bias
!: 2dense_25/kernel
:2dense_25/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
«0
¬1"
trackable_list_wrapper
Þ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24"
trackable_list_wrapper
<
)0
*1
F2
G3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
 ­layer_regularization_losses
®layer_metrics
¯metrics
	variables
°layers
±non_trainable_variables
trainable_variables
­__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
¸
regularization_losses
 ²layer_regularization_losses
³layer_metrics
´metrics
	variables
µlayers
¶non_trainable_variables
trainable_variables
¯__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
 ·layer_regularization_losses
¸layer_metrics
¹metrics
	variables
ºlayers
»non_trainable_variables
 trainable_variables
±__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
¡0
¢1"
trackable_list_wrapper
0
¡0
¢1"
trackable_list_wrapper
¸
¢regularization_losses
 ¼layer_regularization_losses
½layer_metrics
¾metrics
£	variables
¿layers
Ànon_trainable_variables
¤trainable_variables
³__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
¿

Átotal

Âcount
Ã	variables
Ä	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float64", "config": {"name": "loss", "dtype": "float64"}}


Åtotal

Æcount
Ç
_fn_kwargs
È	variables
É	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float64", "config": {"name": "accuracy", "dtype": "float64", "fn": "categorical_accuracy"}}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
Á0
Â1"
trackable_list_wrapper
.
Ã	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Å0
Æ1"
trackable_list_wrapper
.
È	variables"
_generic_user_object
/:-@2Adam/conv2d_27/kernel/m
!:@2Adam/conv2d_27/bias/m
.:,@2"Adam/batch_normalization_5/gamma/m
-:+@2!Adam/batch_normalization_5/beta/m
/:-@@2Adam/conv2d_28/kernel/m
!:@2Adam/conv2d_28/bias/m
0:.@2Adam/conv2d_29/kernel/m
": 2Adam/conv2d_29/bias/m
/:-2"Adam/batch_normalization_6/gamma/m
.:,2!Adam/batch_normalization_6/beta/m
1:/2Adam/conv2d_30/kernel/m
": 2Adam/conv2d_30/bias/m
1:/2Adam/conv2d_31/kernel/m
": 2Adam/conv2d_31/bias/m
0:.@2Adam/conv2d_32/kernel/m
!:@2Adam/conv2d_32/bias/m
&:$@ 2Adam/dense_22/kernel/m
 : 2Adam/dense_22/bias/m
&:$	 2Adam/dense_23/kernel/m
 : 2Adam/dense_23/bias/m
&:$  2Adam/dense_24/kernel/m
 : 2Adam/dense_24/bias/m
&:$ 2Adam/dense_25/kernel/m
 :2Adam/dense_25/bias/m
/:-@2Adam/conv2d_27/kernel/v
!:@2Adam/conv2d_27/bias/v
.:,@2"Adam/batch_normalization_5/gamma/v
-:+@2!Adam/batch_normalization_5/beta/v
/:-@@2Adam/conv2d_28/kernel/v
!:@2Adam/conv2d_28/bias/v
0:.@2Adam/conv2d_29/kernel/v
": 2Adam/conv2d_29/bias/v
/:-2"Adam/batch_normalization_6/gamma/v
.:,2!Adam/batch_normalization_6/beta/v
1:/2Adam/conv2d_30/kernel/v
": 2Adam/conv2d_30/bias/v
1:/2Adam/conv2d_31/kernel/v
": 2Adam/conv2d_31/bias/v
0:.@2Adam/conv2d_32/kernel/v
!:@2Adam/conv2d_32/bias/v
&:$@ 2Adam/dense_22/kernel/v
 : 2Adam/dense_22/bias/v
&:$	 2Adam/dense_23/kernel/v
 : 2Adam/dense_23/bias/v
&:$  2Adam/dense_24/kernel/v
 : 2Adam/dense_24/bias/v
&:$ 2Adam/dense_25/kernel/v
 :2Adam/dense_25/bias/v
Ö2Ó
B__inference_model_5_layer_call_and_return_conditional_losses_31616
B__inference_model_5_layer_call_and_return_conditional_losses_32371
B__inference_model_5_layer_call_and_return_conditional_losses_32250
B__inference_model_5_layer_call_and_return_conditional_losses_31700À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
'__inference_model_5_layer_call_fn_31993
'__inference_model_5_layer_call_fn_32495
'__inference_model_5_layer_call_fn_31847
'__inference_model_5_layer_call_fn_32433À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
 __inference__wrapped_model_30499õ
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *e¢b
`]
1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	
î2ë
D__inference_conv2d_27_layer_call_and_return_conditional_losses_32506¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_27_layer_call_fn_32515¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2ÿ
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32637
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32573
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32553
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32657´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
5__inference_batch_normalization_5_layer_call_fn_32586
5__inference_batch_normalization_5_layer_call_fn_32683
5__inference_batch_normalization_5_layer_call_fn_32670
5__inference_batch_normalization_5_layer_call_fn_32599´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_conv2d_28_layer_call_and_return_conditional_losses_32694¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_28_layer_call_fn_32703¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_30649à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_22_layer_call_fn_30655à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
È2Å
E__inference_dropout_22_layer_call_and_return_conditional_losses_32715
E__inference_dropout_22_layer_call_and_return_conditional_losses_32720´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
*__inference_dropout_22_layer_call_fn_32725
*__inference_dropout_22_layer_call_fn_32730´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_conv2d_29_layer_call_and_return_conditional_losses_32741¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_29_layer_call_fn_32750¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2ÿ
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32892
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32788
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32872
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32808´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
5__inference_batch_normalization_6_layer_call_fn_32918
5__inference_batch_normalization_6_layer_call_fn_32821
5__inference_batch_normalization_6_layer_call_fn_32905
5__inference_batch_normalization_6_layer_call_fn_32834´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_conv2d_30_layer_call_and_return_conditional_losses_32929¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_30_layer_call_fn_32938¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_20_layer_call_and_return_conditional_losses_32943¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_activation_20_layer_call_fn_32948¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_30805à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_23_layer_call_fn_30811à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
È2Å
E__inference_dropout_23_layer_call_and_return_conditional_losses_32960
E__inference_dropout_23_layer_call_and_return_conditional_losses_32965´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
*__inference_dropout_23_layer_call_fn_32970
*__inference_dropout_23_layer_call_fn_32975´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_conv2d_31_layer_call_and_return_conditional_losses_32986¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_31_layer_call_fn_32995¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_21_layer_call_and_return_conditional_losses_33000¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_activation_21_layer_call_fn_33005¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_30817à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_24_layer_call_fn_30823à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
È2Å
E__inference_dropout_24_layer_call_and_return_conditional_losses_33022
E__inference_dropout_24_layer_call_and_return_conditional_losses_33017´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
*__inference_dropout_24_layer_call_fn_33032
*__inference_dropout_24_layer_call_fn_33027´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_conv2d_32_layer_call_and_return_conditional_losses_33043¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_32_layer_call_fn_33052¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_30829à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_25_layer_call_fn_30835à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
È2Å
E__inference_dropout_25_layer_call_and_return_conditional_losses_33069
E__inference_dropout_25_layer_call_and_return_conditional_losses_33064´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
*__inference_dropout_25_layer_call_fn_33074
*__inference_dropout_25_layer_call_fn_33079´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_flatten_6_layer_call_and_return_conditional_losses_33085¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_6_layer_call_fn_33090¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_22_layer_call_and_return_conditional_losses_33101¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_22_layer_call_fn_33110¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_23_layer_call_and_return_conditional_losses_33121¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_23_layer_call_fn_33130¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_add_6_layer_call_and_return_conditional_losses_33136¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_add_6_layer_call_fn_33142¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
H__inference_sequential_19_layer_call_and_return_conditional_losses_33180
H__inference_sequential_19_layer_call_and_return_conditional_losses_33161
H__inference_sequential_19_layer_call_and_return_conditional_losses_30935
H__inference_sequential_19_layer_call_and_return_conditional_losses_30919À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
-__inference_sequential_19_layer_call_fn_33193
-__inference_sequential_19_layer_call_fn_33206
-__inference_sequential_19_layer_call_fn_30965
-__inference_sequential_19_layer_call_fn_30994À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
àBÝ
#__inference_signature_wrapper_32065conv2d_27_inputdense_23_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_22_layer_call_and_return_conditional_losses_33211¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_activation_22_layer_call_fn_33216¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_24_layer_call_and_return_conditional_losses_33226¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_24_layer_call_fn_33235¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_activation_23_layer_call_and_return_conditional_losses_33240¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_activation_23_layer_call_fn_33245¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_25_layer_call_and_return_conditional_losses_33256¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_25_layer_call_fn_33265¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 û
 __inference__wrapped_model_30499Ö$ !*')(/0=>GDFELM^_pq ¡¢o¢l
e¢b
`]
1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	
ª "=ª:
8
sequential_19'$
sequential_19ÿÿÿÿÿÿÿÿÿ¶
H__inference_activation_20_layer_call_and_return_conditional_losses_32943j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_activation_20_layer_call_fn_32948]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
H__inference_activation_21_layer_call_and_return_conditional_losses_33000j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_activation_21_layer_call_fn_33005]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¤
H__inference_activation_22_layer_call_and_return_conditional_losses_33211X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
-__inference_activation_22_layer_call_fn_33216K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¤
H__inference_activation_23_layer_call_and_return_conditional_losses_33240X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
-__inference_activation_23_layer_call_fn_33245K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ È
@__inference_add_6_layer_call_and_return_conditional_losses_33136Z¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
%__inference_add_6_layer_call_fn_33142vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ Æ
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32553r)*'(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ00@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ00@
 Æ
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32573r*')(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ00@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ00@
 ë
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32637)*'(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ë
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_32657*')(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
5__inference_batch_normalization_5_layer_call_fn_32586e)*'(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ00@
p
ª " ÿÿÿÿÿÿÿÿÿ00@
5__inference_batch_normalization_5_layer_call_fn_32599e*')(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ00@
p 
ª " ÿÿÿÿÿÿÿÿÿ00@Ã
5__inference_batch_normalization_5_layer_call_fn_32670)*'(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ã
5__inference_batch_normalization_5_layer_call_fn_32683*')(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@í
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32788FGDEN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 í
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32808GDFEN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32872tFGDE<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 È
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32892tGDFE<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Å
5__inference_batch_normalization_6_layer_call_fn_32821FGDEN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÅ
5__inference_batch_normalization_6_layer_call_fn_32834GDFEN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
5__inference_batch_normalization_6_layer_call_fn_32905gFGDE<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª "!ÿÿÿÿÿÿÿÿÿ 
5__inference_batch_normalization_6_layer_call_fn_32918gGDFE<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "!ÿÿÿÿÿÿÿÿÿ´
D__inference_conv2d_27_layer_call_and_return_conditional_losses_32506l !7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ00
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ00@
 
)__inference_conv2d_27_layer_call_fn_32515_ !7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ00
ª " ÿÿÿÿÿÿÿÿÿ00@´
D__inference_conv2d_28_layer_call_and_return_conditional_losses_32694l/07¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ00@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ00@
 
)__inference_conv2d_28_layer_call_fn_32703_/07¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ00@
ª " ÿÿÿÿÿÿÿÿÿ00@µ
D__inference_conv2d_29_layer_call_and_return_conditional_losses_32741m=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_29_layer_call_fn_32750`=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_30_layer_call_and_return_conditional_losses_32929nLM8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_30_layer_call_fn_32938aLM8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_31_layer_call_and_return_conditional_losses_32986n^_8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_31_layer_call_fn_32995a^_8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿµ
D__inference_conv2d_32_layer_call_and_return_conditional_losses_33043mpq8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_32_layer_call_fn_33052`pq8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ@¥
C__inference_dense_22_layer_call_and_return_conditional_losses_33101^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
(__inference_dense_22_layer_call_fn_33110Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¥
C__inference_dense_23_layer_call_and_return_conditional_losses_33121^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
(__inference_dense_23_layer_call_fn_33130Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ ¥
C__inference_dense_24_layer_call_and_return_conditional_losses_33226^ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
(__inference_dense_24_layer_call_fn_33235Q /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¥
C__inference_dense_25_layer_call_and_return_conditional_losses_33256^¡¢/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense_25_layer_call_fn_33265Q¡¢/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿµ
E__inference_dropout_22_layer_call_and_return_conditional_losses_32715l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 µ
E__inference_dropout_22_layer_call_and_return_conditional_losses_32720l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
*__inference_dropout_22_layer_call_fn_32725_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p
ª " ÿÿÿÿÿÿÿÿÿ@
*__inference_dropout_22_layer_call_fn_32730_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª " ÿÿÿÿÿÿÿÿÿ@·
E__inference_dropout_23_layer_call_and_return_conditional_losses_32960n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ·
E__inference_dropout_23_layer_call_and_return_conditional_losses_32965n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_dropout_23_layer_call_fn_32970a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª "!ÿÿÿÿÿÿÿÿÿ
*__inference_dropout_23_layer_call_fn_32975a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "!ÿÿÿÿÿÿÿÿÿ·
E__inference_dropout_24_layer_call_and_return_conditional_losses_33017n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ·
E__inference_dropout_24_layer_call_and_return_conditional_losses_33022n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_dropout_24_layer_call_fn_33027a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª "!ÿÿÿÿÿÿÿÿÿ
*__inference_dropout_24_layer_call_fn_33032a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "!ÿÿÿÿÿÿÿÿÿµ
E__inference_dropout_25_layer_call_and_return_conditional_losses_33064l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 µ
E__inference_dropout_25_layer_call_and_return_conditional_losses_33069l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
*__inference_dropout_25_layer_call_fn_33074_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p
ª " ÿÿÿÿÿÿÿÿÿ@
*__inference_dropout_25_layer_call_fn_33079_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª " ÿÿÿÿÿÿÿÿÿ@¨
D__inference_flatten_6_layer_call_and_return_conditional_losses_33085`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_flatten_6_layer_call_fn_33090S7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@î
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_30649R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_22_layer_call_fn_30655R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_30805R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_23_layer_call_fn_30811R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_30817R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_24_layer_call_fn_30823R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_30829R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_25_layer_call_fn_30835R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
B__inference_model_5_layer_call_and_return_conditional_losses_31616Æ$ !)*'(/0=>FGDELM^_pq ¡¢w¢t
m¢j
`]
1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
B__inference_model_5_layer_call_and_return_conditional_losses_31700Æ$ !*')(/0=>GDFELM^_pq ¡¢w¢t
m¢j
`]
1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
B__inference_model_5_layer_call_and_return_conditional_losses_32250¹$ !)*'(/0=>FGDELM^_pq ¡¢j¢g
`¢]
SP
*'
inputs/0ÿÿÿÿÿÿÿÿÿ00
"
inputs/1ÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
B__inference_model_5_layer_call_and_return_conditional_losses_32371¹$ !*')(/0=>GDFELM^_pq ¡¢j¢g
`¢]
SP
*'
inputs/0ÿÿÿÿÿÿÿÿÿ00
"
inputs/1ÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 å
'__inference_model_5_layer_call_fn_31847¹$ !)*'(/0=>FGDELM^_pq ¡¢w¢t
m¢j
`]
1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿå
'__inference_model_5_layer_call_fn_31993¹$ !*')(/0=>GDFELM^_pq ¡¢w¢t
m¢j
`]
1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿØ
'__inference_model_5_layer_call_fn_32433¬$ !)*'(/0=>FGDELM^_pq ¡¢j¢g
`¢]
SP
*'
inputs/0ÿÿÿÿÿÿÿÿÿ00
"
inputs/1ÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿØ
'__inference_model_5_layer_call_fn_32495¬$ !*')(/0=>GDFELM^_pq ¡¢j¢g
`¢]
SP
*'
inputs/0ÿÿÿÿÿÿÿÿÿ00
"
inputs/1ÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿÃ
H__inference_sequential_19_layer_call_and_return_conditional_losses_30919w ¡¢D¢A
:¢7
-*
activation_22_inputÿÿÿÿÿÿÿÿÿ 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
H__inference_sequential_19_layer_call_and_return_conditional_losses_30935w ¡¢D¢A
:¢7
-*
activation_22_inputÿÿÿÿÿÿÿÿÿ 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
H__inference_sequential_19_layer_call_and_return_conditional_losses_33161j ¡¢7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
H__inference_sequential_19_layer_call_and_return_conditional_losses_33180j ¡¢7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_19_layer_call_fn_30965j ¡¢D¢A
:¢7
-*
activation_22_inputÿÿÿÿÿÿÿÿÿ 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_19_layer_call_fn_30994j ¡¢D¢A
:¢7
-*
activation_22_inputÿÿÿÿÿÿÿÿÿ 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_19_layer_call_fn_33193] ¡¢7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_19_layer_call_fn_33206] ¡¢7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¢
#__inference_signature_wrapper_32065ú$ !*')(/0=>GDFELM^_pq ¡¢¢
¢ 
ª
D
conv2d_27_input1.
conv2d_27_inputÿÿÿÿÿÿÿÿÿ00
:
dense_23_input(%
dense_23_inputÿÿÿÿÿÿÿÿÿ	"=ª:
8
sequential_19'$
sequential_19ÿÿÿÿÿÿÿÿÿ