Х
НЁ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ж
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

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
Р
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
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
С
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
executor_typestring Ј
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02unknown8НЭ

conv3d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_12/kernel

$conv3d_12/kernel/Read/ReadVariableOpReadVariableOpconv3d_12/kernel**
_output_shapes
:*
dtype0
t
conv3d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_12/bias
m
"conv3d_12/bias/Read/ReadVariableOpReadVariableOpconv3d_12/bias*
_output_shapes
:*
dtype0

conv3d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_13/kernel

$conv3d_13/kernel/Read/ReadVariableOpReadVariableOpconv3d_13/kernel**
_output_shapes
:*
dtype0
t
conv3d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_13/bias
m
"conv3d_13/bias/Read/ReadVariableOpReadVariableOpconv3d_13/bias*
_output_shapes
:*
dtype0
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,* 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

:,*
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
:,*
dtype0
z
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

:,,*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
:,*
dtype0
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

:,,*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:,*
dtype0
z
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_39/kernel
s
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel*
_output_shapes

:,,*
dtype0
r
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_39/bias
k
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes
:,*
dtype0
z
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:,,*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:,*
dtype0
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:,*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:*
dtype0
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
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv3d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_12/kernel/m

+Adam/conv3d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_12/bias/m
{
)Adam/conv3d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_13/kernel/m

+Adam/conv3d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/kernel/m**
_output_shapes
:*
dtype0

Adam/conv3d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_13/bias/m
{
)Adam/conv3d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/bias/m*
_output_shapes
:*
dtype0

Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_36/kernel/m

*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m*
_output_shapes

:,*
dtype0

Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_36/bias/m
y
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes
:,*
dtype0

Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_37/kernel/m

*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes

:,,*
dtype0

Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:,*
dtype0

Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_38/kernel/m

*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes

:,,*
dtype0

Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:,*
dtype0

Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_39/kernel/m

*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m*
_output_shapes

:,,*
dtype0

Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_39/bias/m
y
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes
:,*
dtype0

Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_40/kernel/m

*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes

:,,*
dtype0

Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:,*
dtype0

Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_41/kernel/m

*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

:,*
dtype0

Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0

Adam/conv3d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_12/kernel/v

+Adam/conv3d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_12/bias/v
{
)Adam/conv3d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/bias/v*
_output_shapes
:*
dtype0

Adam/conv3d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_13/kernel/v

+Adam/conv3d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/kernel/v**
_output_shapes
:*
dtype0

Adam/conv3d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_13/bias/v
{
)Adam/conv3d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/bias/v*
_output_shapes
:*
dtype0

Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_36/kernel/v

*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v*
_output_shapes

:,*
dtype0

Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_36/bias/v
y
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes
:,*
dtype0

Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_37/kernel/v

*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes

:,,*
dtype0

Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:,*
dtype0

Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_38/kernel/v

*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes

:,,*
dtype0

Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:,*
dtype0

Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_39/kernel/v

*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v*
_output_shapes

:,,*
dtype0

Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_39/bias/v
y
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes
:,*
dtype0

Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_40/kernel/v

*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes

:,,*
dtype0

Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:,*
dtype0

Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_41/kernel/v

*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

:,*
dtype0

Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
шu
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ѓu
valueuBu Bu
ф
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
І

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*

'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
І

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*

5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
* 

;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
І

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
І

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
І

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
І

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses*
І

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
І

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*

witer

xbeta_1

ybeta_2
	zdecay
{learning_ratemЮ mЯ-mа.mбGmвHmгOmдPmеWmжXmз_mи`mйgmкhmлomмpmнvо vп-vр.vсGvтHvуOvфPvхWvцXvч_vш`vщgvъhvыovьpvэ*
z
0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15*
z
0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15*
* 
Б
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_36/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 

Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_37/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 

Њnon_trainable_variables
Ћlayers
Ќmetrics
 ­layer_regularization_losses
Ўlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_38/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

W0
X1*

W0
X1*
* 

Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_39/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_39/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

_0
`1*

_0
`1*
* 

Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_40/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_40/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 

Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_41/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 

Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
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
14*

У0
Ф1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Хtotal

Цcount
Ч	variables
Ш	keras_api*
M

Щtotal

Ъcount
Ы
_fn_kwargs
Ь	variables
Э	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Х0
Ц1*

Ч	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Щ0
Ъ1*

Ь	variables*
}
VARIABLE_VALUEAdam/conv3d_12/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_12/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv3d_13/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_13/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_39/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_39/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv3d_12/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_12/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv3d_13/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_13/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_39/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_39/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
v
serving_default_catPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_convPlaceholder*3
_output_shapes!
:џџџџџџџџџ*
dtype0*(
shape:џџџџџџџџџ
э
StatefulPartitionedCallStatefulPartitionedCallserving_default_catserving_default_convconv3d_12/kernelconv3d_12/biasconv3d_13/kernelconv3d_13/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2829558
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_12/kernel/Read/ReadVariableOp"conv3d_12/bias/Read/ReadVariableOp$conv3d_13/kernel/Read/ReadVariableOp"conv3d_13/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv3d_12/kernel/m/Read/ReadVariableOp)Adam/conv3d_12/bias/m/Read/ReadVariableOp+Adam/conv3d_13/kernel/m/Read/ReadVariableOp)Adam/conv3d_13/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp+Adam/conv3d_12/kernel/v/Read/ReadVariableOp)Adam/conv3d_12/bias/v/Read/ReadVariableOp+Adam/conv3d_13/kernel/v/Read/ReadVariableOp)Adam/conv3d_13/bias/v/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_2829968
Є
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_12/kernelconv3d_12/biasconv3d_13/kernelconv3d_13/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_12/kernel/mAdam/conv3d_12/bias/mAdam/conv3d_13/kernel/mAdam/conv3d_13/bias/mAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_39/kernel/mAdam/dense_39/bias/mAdam/dense_40/kernel/mAdam/dense_40/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/conv3d_12/kernel/vAdam/conv3d_12/bias/vAdam/conv3d_13/kernel/vAdam/conv3d_13/bias/vAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/vAdam/dense_39/kernel/vAdam/dense_39/bias/vAdam/dense_40/kernel/vAdam/dense_40/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2830149ъС	
фт
џ"
#__inference__traced_restore_2830149
file_prefix?
!assignvariableop_conv3d_12_kernel:/
!assignvariableop_1_conv3d_12_bias:A
#assignvariableop_2_conv3d_13_kernel:/
!assignvariableop_3_conv3d_13_bias:4
"assignvariableop_4_dense_36_kernel:,.
 assignvariableop_5_dense_36_bias:,4
"assignvariableop_6_dense_37_kernel:,,.
 assignvariableop_7_dense_37_bias:,4
"assignvariableop_8_dense_38_kernel:,,.
 assignvariableop_9_dense_38_bias:,5
#assignvariableop_10_dense_39_kernel:,,/
!assignvariableop_11_dense_39_bias:,5
#assignvariableop_12_dense_40_kernel:,,/
!assignvariableop_13_dense_40_bias:,5
#assignvariableop_14_dense_41_kernel:,/
!assignvariableop_15_dense_41_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: I
+assignvariableop_25_adam_conv3d_12_kernel_m:7
)assignvariableop_26_adam_conv3d_12_bias_m:I
+assignvariableop_27_adam_conv3d_13_kernel_m:7
)assignvariableop_28_adam_conv3d_13_bias_m:<
*assignvariableop_29_adam_dense_36_kernel_m:,6
(assignvariableop_30_adam_dense_36_bias_m:,<
*assignvariableop_31_adam_dense_37_kernel_m:,,6
(assignvariableop_32_adam_dense_37_bias_m:,<
*assignvariableop_33_adam_dense_38_kernel_m:,,6
(assignvariableop_34_adam_dense_38_bias_m:,<
*assignvariableop_35_adam_dense_39_kernel_m:,,6
(assignvariableop_36_adam_dense_39_bias_m:,<
*assignvariableop_37_adam_dense_40_kernel_m:,,6
(assignvariableop_38_adam_dense_40_bias_m:,<
*assignvariableop_39_adam_dense_41_kernel_m:,6
(assignvariableop_40_adam_dense_41_bias_m:I
+assignvariableop_41_adam_conv3d_12_kernel_v:7
)assignvariableop_42_adam_conv3d_12_bias_v:I
+assignvariableop_43_adam_conv3d_13_kernel_v:7
)assignvariableop_44_adam_conv3d_13_bias_v:<
*assignvariableop_45_adam_dense_36_kernel_v:,6
(assignvariableop_46_adam_dense_36_bias_v:,<
*assignvariableop_47_adam_dense_37_kernel_v:,,6
(assignvariableop_48_adam_dense_37_bias_v:,<
*assignvariableop_49_adam_dense_38_kernel_v:,,6
(assignvariableop_50_adam_dense_38_bias_v:,<
*assignvariableop_51_adam_dense_39_kernel_v:,,6
(assignvariableop_52_adam_dense_39_bias_v:,<
*assignvariableop_53_adam_dense_40_kernel_v:,,6
(assignvariableop_54_adam_dense_40_bias_v:,<
*assignvariableop_55_adam_dense_41_kernel_v:,6
(assignvariableop_56_adam_dense_41_bias_v:
identity_58ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*Р
valueЖBГ:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHх
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B У
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ў
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_36_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_36_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_37_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_37_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_38_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_38_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_39_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_39_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_40_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_40_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_41_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_41_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv3d_12_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv3d_12_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv3d_13_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv3d_13_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_36_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_36_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_37_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_37_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_38_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_38_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_39_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_39_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_40_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_40_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_41_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_41_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv3d_12_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv3d_12_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv3d_13_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv3d_13_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_36_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_36_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_37_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_37_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_38_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_38_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_39_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_39_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_40_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_40_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_41_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_41_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Е

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: Ђ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
к
i
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2828725

inputs
identityН
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_37_layer_call_and_return_conditional_losses_2829693

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
к
i
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2828737

inputs
identityН
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Є
+__inference_conv3d_13_layer_call_fn_2829608

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2828779{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ]

"__inference__wrapped_model_2828703
conv
catN
0model_6_conv3d_12_conv3d_readvariableop_resource:?
1model_6_conv3d_12_biasadd_readvariableop_resource:N
0model_6_conv3d_13_conv3d_readvariableop_resource:?
1model_6_conv3d_13_biasadd_readvariableop_resource:A
/model_6_dense_36_matmul_readvariableop_resource:,>
0model_6_dense_36_biasadd_readvariableop_resource:,A
/model_6_dense_37_matmul_readvariableop_resource:,,>
0model_6_dense_37_biasadd_readvariableop_resource:,A
/model_6_dense_38_matmul_readvariableop_resource:,,>
0model_6_dense_38_biasadd_readvariableop_resource:,A
/model_6_dense_39_matmul_readvariableop_resource:,,>
0model_6_dense_39_biasadd_readvariableop_resource:,A
/model_6_dense_40_matmul_readvariableop_resource:,,>
0model_6_dense_40_biasadd_readvariableop_resource:,A
/model_6_dense_41_matmul_readvariableop_resource:,>
0model_6_dense_41_biasadd_readvariableop_resource:
identityЂ(model_6/conv3d_12/BiasAdd/ReadVariableOpЂ'model_6/conv3d_12/Conv3D/ReadVariableOpЂ(model_6/conv3d_13/BiasAdd/ReadVariableOpЂ'model_6/conv3d_13/Conv3D/ReadVariableOpЂ'model_6/dense_36/BiasAdd/ReadVariableOpЂ&model_6/dense_36/MatMul/ReadVariableOpЂ'model_6/dense_37/BiasAdd/ReadVariableOpЂ&model_6/dense_37/MatMul/ReadVariableOpЂ'model_6/dense_38/BiasAdd/ReadVariableOpЂ&model_6/dense_38/MatMul/ReadVariableOpЂ'model_6/dense_39/BiasAdd/ReadVariableOpЂ&model_6/dense_39/MatMul/ReadVariableOpЂ'model_6/dense_40/BiasAdd/ReadVariableOpЂ&model_6/dense_40/MatMul/ReadVariableOpЂ'model_6/dense_41/BiasAdd/ReadVariableOpЂ&model_6/dense_41/MatMul/ReadVariableOp
%model_6/zero_padding3d_6/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
model_6/zero_padding3d_6/PadPadconv.model_6/zero_padding3d_6/Pad/paddings:output:0*
T0*3
_output_shapes!
:џџџџџџџџџЄ
'model_6/conv3d_12/Conv3D/ReadVariableOpReadVariableOp0model_6_conv3d_12_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0с
model_6/conv3d_12/Conv3DConv3D%model_6/zero_padding3d_6/Pad:output:0/model_6/conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	

(model_6/conv3d_12/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv3d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0З
model_6/conv3d_12/BiasAddBiasAdd!model_6/conv3d_12/Conv3D:output:00model_6/conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ
model_6/conv3d_12/ReluRelu"model_6/conv3d_12/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџа
"model_6/max_pooling3d_12/MaxPool3D	MaxPool3D$model_6/conv3d_12/Relu:activations:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingSAME*
strides	
Є
'model_6/conv3d_13/Conv3D/ReadVariableOpReadVariableOp0model_6_conv3d_13_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0ч
model_6/conv3d_13/Conv3DConv3D+model_6/max_pooling3d_12/MaxPool3D:output:0/model_6/conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	

(model_6/conv3d_13/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv3d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0З
model_6/conv3d_13/BiasAddBiasAdd!model_6/conv3d_13/Conv3D:output:00model_6/conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ
model_6/conv3d_13/ReluRelu"model_6/conv3d_13/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџа
"model_6/max_pooling3d_13/MaxPool3D	MaxPool3D$model_6/conv3d_13/Relu:activations:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingSAME*
strides	
h
model_6/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ѕ
model_6/flatten_6/ReshapeReshape+model_6/max_pooling3d_13/MaxPool3D:output:0 model_6/flatten_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
!model_6/concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :И
model_6/concatenate_6/concatConcatV2cat"model_6/flatten_6/Reshape:output:0*model_6/concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
&model_6/dense_36/MatMul/ReadVariableOpReadVariableOp/model_6_dense_36_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0Њ
model_6/dense_36/MatMulMatMul%model_6/concatenate_6/concat:output:0.model_6/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
'model_6/dense_36/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_36_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0Љ
model_6/dense_36/BiasAddBiasAdd!model_6/dense_36/MatMul:product:0/model_6/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
model_6/dense_36/ReluRelu!model_6/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
&model_6/dense_37/MatMul/ReadVariableOpReadVariableOp/model_6_dense_37_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0Ј
model_6/dense_37/MatMulMatMul#model_6/dense_36/Relu:activations:0.model_6/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
'model_6/dense_37/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_37_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0Љ
model_6/dense_37/BiasAddBiasAdd!model_6/dense_37/MatMul:product:0/model_6/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
model_6/dense_37/ReluRelu!model_6/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
&model_6/dense_38/MatMul/ReadVariableOpReadVariableOp/model_6_dense_38_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0Ј
model_6/dense_38/MatMulMatMul#model_6/dense_37/Relu:activations:0.model_6/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
'model_6/dense_38/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_38_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0Љ
model_6/dense_38/BiasAddBiasAdd!model_6/dense_38/MatMul:product:0/model_6/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
model_6/dense_38/ReluRelu!model_6/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
&model_6/dense_39/MatMul/ReadVariableOpReadVariableOp/model_6_dense_39_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0Ј
model_6/dense_39/MatMulMatMul#model_6/dense_38/Relu:activations:0.model_6/dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
'model_6/dense_39/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_39_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0Љ
model_6/dense_39/BiasAddBiasAdd!model_6/dense_39/MatMul:product:0/model_6/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
model_6/dense_39/ReluRelu!model_6/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
&model_6/dense_40/MatMul/ReadVariableOpReadVariableOp/model_6_dense_40_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0Ј
model_6/dense_40/MatMulMatMul#model_6/dense_39/Relu:activations:0.model_6/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
'model_6/dense_40/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_40_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0Љ
model_6/dense_40/BiasAddBiasAdd!model_6/dense_40/MatMul:product:0/model_6/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
model_6/dense_40/ReluRelu!model_6/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
&model_6/dense_41/MatMul/ReadVariableOpReadVariableOp/model_6_dense_41_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0Ј
model_6/dense_41/MatMulMatMul#model_6/dense_40/Relu:activations:0.model_6/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'model_6/dense_41/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
model_6/dense_41/BiasAddBiasAdd!model_6/dense_41/MatMul:product:0/model_6/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
model_6/dense_41/SoftmaxSoftmax!model_6/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
IdentityIdentity"model_6/dense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџт
NoOpNoOp)^model_6/conv3d_12/BiasAdd/ReadVariableOp(^model_6/conv3d_12/Conv3D/ReadVariableOp)^model_6/conv3d_13/BiasAdd/ReadVariableOp(^model_6/conv3d_13/Conv3D/ReadVariableOp(^model_6/dense_36/BiasAdd/ReadVariableOp'^model_6/dense_36/MatMul/ReadVariableOp(^model_6/dense_37/BiasAdd/ReadVariableOp'^model_6/dense_37/MatMul/ReadVariableOp(^model_6/dense_38/BiasAdd/ReadVariableOp'^model_6/dense_38/MatMul/ReadVariableOp(^model_6/dense_39/BiasAdd/ReadVariableOp'^model_6/dense_39/MatMul/ReadVariableOp(^model_6/dense_40/BiasAdd/ReadVariableOp'^model_6/dense_40/MatMul/ReadVariableOp(^model_6/dense_41/BiasAdd/ReadVariableOp'^model_6/dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2T
(model_6/conv3d_12/BiasAdd/ReadVariableOp(model_6/conv3d_12/BiasAdd/ReadVariableOp2R
'model_6/conv3d_12/Conv3D/ReadVariableOp'model_6/conv3d_12/Conv3D/ReadVariableOp2T
(model_6/conv3d_13/BiasAdd/ReadVariableOp(model_6/conv3d_13/BiasAdd/ReadVariableOp2R
'model_6/conv3d_13/Conv3D/ReadVariableOp'model_6/conv3d_13/Conv3D/ReadVariableOp2R
'model_6/dense_36/BiasAdd/ReadVariableOp'model_6/dense_36/BiasAdd/ReadVariableOp2P
&model_6/dense_36/MatMul/ReadVariableOp&model_6/dense_36/MatMul/ReadVariableOp2R
'model_6/dense_37/BiasAdd/ReadVariableOp'model_6/dense_37/BiasAdd/ReadVariableOp2P
&model_6/dense_37/MatMul/ReadVariableOp&model_6/dense_37/MatMul/ReadVariableOp2R
'model_6/dense_38/BiasAdd/ReadVariableOp'model_6/dense_38/BiasAdd/ReadVariableOp2P
&model_6/dense_38/MatMul/ReadVariableOp&model_6/dense_38/MatMul/ReadVariableOp2R
'model_6/dense_39/BiasAdd/ReadVariableOp'model_6/dense_39/BiasAdd/ReadVariableOp2P
&model_6/dense_39/MatMul/ReadVariableOp&model_6/dense_39/MatMul/ReadVariableOp2R
'model_6/dense_40/BiasAdd/ReadVariableOp'model_6/dense_40/BiasAdd/ReadVariableOp2P
&model_6/dense_40/MatMul/ReadVariableOp&model_6/dense_40/MatMul/ReadVariableOp2R
'model_6/dense_41/BiasAdd/ReadVariableOp'model_6/dense_41/BiasAdd/ReadVariableOp2P
&model_6/dense_41/MatMul/ReadVariableOp&model_6/dense_41/MatMul/ReadVariableOp:Y U
3
_output_shapes!
:џџџџџџџџџ

_user_specified_nameconv:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_namecat
Е
Д
)__inference_model_6_layer_call_fn_2829198
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconvcatunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_2829125o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:џџџџџџџџџ

_user_specified_nameconv:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_namecat
Б
[
/__inference_concatenate_6_layer_call_fn_2829646
inputs_0
inputs_1
identityХ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2828801`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
Ё

і
E__inference_dense_41_layer_call_and_return_conditional_losses_2828899

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
Ј

F__inference_conv3d_12_layer_call_and_return_conditional_losses_2829589

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџm
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_36_layer_call_and_return_conditional_losses_2828814

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч

*__inference_dense_36_layer_call_fn_2829662

inputs
unknown:,
	unknown_0:,
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_2828814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
у:
Ч
D__inference_model_6_layer_call_and_return_conditional_losses_2829125

inputs
inputs_1/
conv3d_12_2829080:
conv3d_12_2829082:/
conv3d_13_2829086:
conv3d_13_2829088:"
dense_36_2829094:,
dense_36_2829096:,"
dense_37_2829099:,,
dense_37_2829101:,"
dense_38_2829104:,,
dense_38_2829106:,"
dense_39_2829109:,,
dense_39_2829111:,"
dense_40_2829114:,,
dense_40_2829116:,"
dense_41_2829119:,
dense_41_2829121:
identityЂ!conv3d_12/StatefulPartitionedCallЂ!conv3d_13/StatefulPartitionedCallЂ dense_36/StatefulPartitionedCallЂ dense_37/StatefulPartitionedCallЂ dense_38/StatefulPartitionedCallЂ dense_39/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЂ dense_41/StatefulPartitionedCallи
 zero_padding3d_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2828713Љ
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_6/PartitionedCall:output:0conv3d_12_2829080conv3d_12_2829082*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2828761ќ
 max_pooling3d_12/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2828725Љ
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_12/PartitionedCall:output:0conv3d_13_2829086conv3d_13_2829088*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2828779ќ
 max_pooling3d_13/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2828737с
flatten_6/PartitionedCallPartitionedCall)max_pooling3d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2828792э
concatenate_6/PartitionedCallPartitionedCallinputs_1"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2828801
 dense_36/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_36_2829094dense_36_2829096*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_2828814
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_2829099dense_37_2829101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2828831
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_2829104dense_38_2829106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_2828848
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_2829109dense_39_2829111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_2828865
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_2829114dense_40_2829116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_2828882
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_2829119dense_41_2829121*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2828899x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџр
NoOpNoOp"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_40_layer_call_and_return_conditional_losses_2828882

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
Ч

*__inference_dense_40_layer_call_fn_2829742

inputs
unknown:,,
	unknown_0:,
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_2828882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
Л
t
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2828801

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
Н
)__inference_model_6_layer_call_fn_2829342
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_2828906o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
а:
Р
D__inference_model_6_layer_call_and_return_conditional_losses_2829248
conv
cat/
conv3d_12_2829203:
conv3d_12_2829205:/
conv3d_13_2829209:
conv3d_13_2829211:"
dense_36_2829217:,
dense_36_2829219:,"
dense_37_2829222:,,
dense_37_2829224:,"
dense_38_2829227:,,
dense_38_2829229:,"
dense_39_2829232:,,
dense_39_2829234:,"
dense_40_2829237:,,
dense_40_2829239:,"
dense_41_2829242:,
dense_41_2829244:
identityЂ!conv3d_12/StatefulPartitionedCallЂ!conv3d_13/StatefulPartitionedCallЂ dense_36/StatefulPartitionedCallЂ dense_37/StatefulPartitionedCallЂ dense_38/StatefulPartitionedCallЂ dense_39/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЂ dense_41/StatefulPartitionedCallж
 zero_padding3d_6/PartitionedCallPartitionedCallconv*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2828713Љ
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_6/PartitionedCall:output:0conv3d_12_2829203conv3d_12_2829205*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2828761ќ
 max_pooling3d_12/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2828725Љ
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_12/PartitionedCall:output:0conv3d_13_2829209conv3d_13_2829211*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2828779ќ
 max_pooling3d_13/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2828737с
flatten_6/PartitionedCallPartitionedCall)max_pooling3d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2828792ш
concatenate_6/PartitionedCallPartitionedCallcat"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2828801
 dense_36/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_36_2829217dense_36_2829219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_2828814
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_2829222dense_37_2829224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2828831
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_2829227dense_38_2829229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_2828848
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_2829232dense_39_2829234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_2828865
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_2829237dense_40_2829239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_2828882
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_2829242dense_41_2829244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2828899x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџр
NoOpNoOp"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
3
_output_shapes!
:џџџџџџџџџ

_user_specified_nameconv:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_namecat
к
i
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2829599

inputs
identityН
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

А
%__inference_signature_wrapper_2829558
cat
conv%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallconvcatunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_2828703o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:џџџџџџџџџ

_user_specified_namecat:YU
3
_output_shapes!
:џџџџџџџџџ

_user_specified_nameconv
Ч

*__inference_dense_38_layer_call_fn_2829702

inputs
unknown:,,
	unknown_0:,
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_2828848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs


і
E__inference_dense_38_layer_call_and_return_conditional_losses_2828848

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs

Є
+__inference_conv3d_12_layer_call_fn_2829578

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2828761{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ѓ
N
2__inference_zero_padding3d_6_layer_call_fn_2829563

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2828713
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч

*__inference_dense_41_layer_call_fn_2829762

inputs
unknown:,
	unknown_0:
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2828899o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
у:
Ч
D__inference_model_6_layer_call_and_return_conditional_losses_2828906

inputs
inputs_1/
conv3d_12_2828762:
conv3d_12_2828764:/
conv3d_13_2828780:
conv3d_13_2828782:"
dense_36_2828815:,
dense_36_2828817:,"
dense_37_2828832:,,
dense_37_2828834:,"
dense_38_2828849:,,
dense_38_2828851:,"
dense_39_2828866:,,
dense_39_2828868:,"
dense_40_2828883:,,
dense_40_2828885:,"
dense_41_2828900:,
dense_41_2828902:
identityЂ!conv3d_12/StatefulPartitionedCallЂ!conv3d_13/StatefulPartitionedCallЂ dense_36/StatefulPartitionedCallЂ dense_37/StatefulPartitionedCallЂ dense_38/StatefulPartitionedCallЂ dense_39/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЂ dense_41/StatefulPartitionedCallи
 zero_padding3d_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2828713Љ
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_6/PartitionedCall:output:0conv3d_12_2828762conv3d_12_2828764*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2828761ќ
 max_pooling3d_12/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2828725Љ
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_12/PartitionedCall:output:0conv3d_13_2828780conv3d_13_2828782*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2828779ќ
 max_pooling3d_13/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2828737с
flatten_6/PartitionedCallPartitionedCall)max_pooling3d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2828792э
concatenate_6/PartitionedCallPartitionedCallinputs_1"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2828801
 dense_36/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_36_2828815dense_36_2828817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_2828814
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_2828832dense_37_2828834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2828831
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_2828849dense_38_2828851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_2828848
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_2828866dense_39_2828868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_2828865
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_2828883dense_40_2828885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_2828882
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_2828900dense_41_2828902*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2828899x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџр
NoOpNoOp"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_40_layer_call_and_return_conditional_losses_2829753

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
М
G
+__inference_flatten_6_layer_call_fn_2829634

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2828792`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
к
i
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2829629

inputs
identityН
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч

*__inference_dense_37_layer_call_fn_2829682

inputs
unknown:,,
	unknown_0:,
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2828831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
Ьp
Ѕ
 __inference__traced_save_2829968
file_prefix/
+savev2_conv3d_12_kernel_read_readvariableop-
)savev2_conv3d_12_bias_read_readvariableop/
+savev2_conv3d_13_kernel_read_readvariableop-
)savev2_conv3d_13_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv3d_12_kernel_m_read_readvariableop4
0savev2_adam_conv3d_12_bias_m_read_readvariableop6
2savev2_adam_conv3d_13_kernel_m_read_readvariableop4
0savev2_adam_conv3d_13_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop6
2savev2_adam_conv3d_12_kernel_v_read_readvariableop4
0savev2_adam_conv3d_12_bias_v_read_readvariableop6
2savev2_adam_conv3d_13_kernel_v_read_readvariableop4
0savev2_adam_conv3d_13_bias_v_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
:  
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*Р
valueЖBГ:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHт
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Н
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_12_kernel_read_readvariableop)savev2_conv3d_12_bias_read_readvariableop+savev2_conv3d_13_kernel_read_readvariableop)savev2_conv3d_13_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv3d_12_kernel_m_read_readvariableop0savev2_adam_conv3d_12_bias_m_read_readvariableop2savev2_adam_conv3d_13_kernel_m_read_readvariableop0savev2_adam_conv3d_13_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop2savev2_adam_conv3d_12_kernel_v_read_readvariableop0savev2_adam_conv3d_12_bias_v_read_readvariableop2savev2_adam_conv3d_13_kernel_v_read_readvariableop0savev2_adam_conv3d_13_bias_v_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ѓ
_input_shapesс
о: :::::,:,:,,:,:,,:,:,,:,:,,:,:,:: : : : : : : : : :::::,:,:,,:,:,,:,:,,:,:,,:,:,::::::,:,:,,:,:,,:,:,,:,:,,:,:,:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:,: 

_output_shapes
:,:$ 

_output_shapes

:,,: 

_output_shapes
:,:$	 

_output_shapes

:,,: 


_output_shapes
:,:$ 

_output_shapes

:,,: 

_output_shapes
:,:$ 

_output_shapes

:,,: 

_output_shapes
:,:$ 

_output_shapes

:,: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:,: 

_output_shapes
:,:$  

_output_shapes

:,,: !

_output_shapes
:,:$" 

_output_shapes

:,,: #

_output_shapes
:,:$$ 

_output_shapes

:,,: %

_output_shapes
:,:$& 

_output_shapes

:,,: '

_output_shapes
:,:$( 

_output_shapes

:,: )

_output_shapes
::0*,
*
_output_shapes
:: +

_output_shapes
::0,,
*
_output_shapes
:: -

_output_shapes
::$. 

_output_shapes

:,: /

_output_shapes
:,:$0 

_output_shapes

:,,: 1

_output_shapes
:,:$2 

_output_shapes

:,,: 3

_output_shapes
:,:$4 

_output_shapes

:,,: 5

_output_shapes
:,:$6 

_output_shapes

:,,: 7

_output_shapes
:,:$8 

_output_shapes

:,: 9

_output_shapes
:::

_output_shapes
: 
ѓ
N
2__inference_max_pooling3d_12_layer_call_fn_2829594

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2828725
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѓ
N
2__inference_max_pooling3d_13_layer_call_fn_2829624

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2828737
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч

*__inference_dense_39_layer_call_fn_2829722

inputs
unknown:,,
	unknown_0:,
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_2828865o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
Е
Д
)__inference_model_6_layer_call_fn_2828941
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconvcatunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_2828906o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:џџџџџџџџџ

_user_specified_nameconv:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_namecat
Ю
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_2828792

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_39_layer_call_and_return_conditional_losses_2828865

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
У
v
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2829653
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
Ј

F__inference_conv3d_12_layer_call_and_return_conditional_losses_2828761

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџm
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
R
У
D__inference_model_6_layer_call_and_return_conditional_losses_2829518
inputs_0
inputs_1F
(conv3d_12_conv3d_readvariableop_resource:7
)conv3d_12_biasadd_readvariableop_resource:F
(conv3d_13_conv3d_readvariableop_resource:7
)conv3d_13_biasadd_readvariableop_resource:9
'dense_36_matmul_readvariableop_resource:,6
(dense_36_biasadd_readvariableop_resource:,9
'dense_37_matmul_readvariableop_resource:,,6
(dense_37_biasadd_readvariableop_resource:,9
'dense_38_matmul_readvariableop_resource:,,6
(dense_38_biasadd_readvariableop_resource:,9
'dense_39_matmul_readvariableop_resource:,,6
(dense_39_biasadd_readvariableop_resource:,9
'dense_40_matmul_readvariableop_resource:,,6
(dense_40_biasadd_readvariableop_resource:,9
'dense_41_matmul_readvariableop_resource:,6
(dense_41_biasadd_readvariableop_resource:
identityЂ conv3d_12/BiasAdd/ReadVariableOpЂconv3d_12/Conv3D/ReadVariableOpЂ conv3d_13/BiasAdd/ReadVariableOpЂconv3d_13/Conv3D/ReadVariableOpЂdense_36/BiasAdd/ReadVariableOpЂdense_36/MatMul/ReadVariableOpЂdense_37/BiasAdd/ReadVariableOpЂdense_37/MatMul/ReadVariableOpЂdense_38/BiasAdd/ReadVariableOpЂdense_38/MatMul/ReadVariableOpЂdense_39/BiasAdd/ReadVariableOpЂdense_39/MatMul/ReadVariableOpЂdense_40/BiasAdd/ReadVariableOpЂdense_40/MatMul/ReadVariableOpЂdense_41/BiasAdd/ReadVariableOpЂdense_41/MatMul/ReadVariableOp
zero_padding3d_6/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
zero_padding3d_6/PadPadinputs_0&zero_padding3d_6/Pad/paddings:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
conv3d_12/Conv3D/ReadVariableOpReadVariableOp(conv3d_12_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0Щ
conv3d_12/Conv3DConv3Dzero_padding3d_6/Pad:output:0'conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	

 conv3d_12/BiasAdd/ReadVariableOpReadVariableOp)conv3d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv3d_12/BiasAddBiasAddconv3d_12/Conv3D:output:0(conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџp
conv3d_12/ReluReluconv3d_12/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџР
max_pooling3d_12/MaxPool3D	MaxPool3Dconv3d_12/Relu:activations:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingSAME*
strides	

conv3d_13/Conv3D/ReadVariableOpReadVariableOp(conv3d_13_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0Я
conv3d_13/Conv3DConv3D#max_pooling3d_12/MaxPool3D:output:0'conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	

 conv3d_13/BiasAdd/ReadVariableOpReadVariableOp)conv3d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv3d_13/BiasAddBiasAddconv3d_13/Conv3D:output:0(conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџp
conv3d_13/ReluReluconv3d_13/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџР
max_pooling3d_13/MaxPool3D	MaxPool3Dconv3d_13/Relu:activations:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingSAME*
strides	
`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_6/ReshapeReshape#max_pooling3d_13/MaxPool3D:output:0flatten_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
concatenate_6/concatConcatV2inputs_1flatten_6/Reshape:output:0"concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0
dense_36/MatMulMatMulconcatenate_6/concat:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_39/ReluReludense_39/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_40/MatMulMatMuldense_39/Relu:activations:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0
dense_41/MatMulMatMuldense_40/Relu:activations:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџт
NoOpNoOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 conv3d_12/BiasAdd/ReadVariableOp conv3d_12/BiasAdd/ReadVariableOp2B
conv3d_12/Conv3D/ReadVariableOpconv3d_12/Conv3D/ReadVariableOp2D
 conv3d_13/BiasAdd/ReadVariableOp conv3d_13/BiasAdd/ReadVariableOp2B
conv3d_13/Conv3D/ReadVariableOpconv3d_13/Conv3D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1


і
E__inference_dense_36_layer_call_and_return_conditional_losses_2829673

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_39_layer_call_and_return_conditional_losses_2829733

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
а:
Р
D__inference_model_6_layer_call_and_return_conditional_losses_2829298
conv
cat/
conv3d_12_2829253:
conv3d_12_2829255:/
conv3d_13_2829259:
conv3d_13_2829261:"
dense_36_2829267:,
dense_36_2829269:,"
dense_37_2829272:,,
dense_37_2829274:,"
dense_38_2829277:,,
dense_38_2829279:,"
dense_39_2829282:,,
dense_39_2829284:,"
dense_40_2829287:,,
dense_40_2829289:,"
dense_41_2829292:,
dense_41_2829294:
identityЂ!conv3d_12/StatefulPartitionedCallЂ!conv3d_13/StatefulPartitionedCallЂ dense_36/StatefulPartitionedCallЂ dense_37/StatefulPartitionedCallЂ dense_38/StatefulPartitionedCallЂ dense_39/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЂ dense_41/StatefulPartitionedCallж
 zero_padding3d_6/PartitionedCallPartitionedCallconv*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2828713Љ
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_6/PartitionedCall:output:0conv3d_12_2829253conv3d_12_2829255*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2828761ќ
 max_pooling3d_12/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2828725Љ
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_12/PartitionedCall:output:0conv3d_13_2829259conv3d_13_2829261*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2828779ќ
 max_pooling3d_13/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2828737с
flatten_6/PartitionedCallPartitionedCall)max_pooling3d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2828792ш
concatenate_6/PartitionedCallPartitionedCallcat"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2828801
 dense_36/StatefulPartitionedCallStatefulPartitionedCall&concatenate_6/PartitionedCall:output:0dense_36_2829267dense_36_2829269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_2828814
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_2829272dense_37_2829274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2828831
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_2829277dense_38_2829279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_38_layer_call_and_return_conditional_losses_2828848
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_2829282dense_39_2829284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_2828865
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_2829287dense_40_2829289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_40_layer_call_and_return_conditional_losses_2828882
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_2829292dense_41_2829294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2828899x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџр
NoOpNoOp"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:Y U
3
_output_shapes!
:џџџџџџџџџ

_user_specified_nameconv:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_namecat


і
E__inference_dense_37_layer_call_and_return_conditional_losses_2828831

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
Њ
i
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2828713

inputs
identity
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_2829640

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
i
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2829569

inputs
identity
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ј

F__inference_conv3d_13_layer_call_and_return_conditional_losses_2829619

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџm
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

і
E__inference_dense_41_layer_call_and_return_conditional_losses_2829773

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs


і
E__inference_dense_38_layer_call_and_return_conditional_losses_2829713

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ,
 
_user_specified_nameinputs
а
Н
)__inference_model_6_layer_call_fn_2829380
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_2829125o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
Ј

F__inference_conv3d_13_layer_call_and_return_conditional_losses_2828779

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџm
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
R
У
D__inference_model_6_layer_call_and_return_conditional_losses_2829449
inputs_0
inputs_1F
(conv3d_12_conv3d_readvariableop_resource:7
)conv3d_12_biasadd_readvariableop_resource:F
(conv3d_13_conv3d_readvariableop_resource:7
)conv3d_13_biasadd_readvariableop_resource:9
'dense_36_matmul_readvariableop_resource:,6
(dense_36_biasadd_readvariableop_resource:,9
'dense_37_matmul_readvariableop_resource:,,6
(dense_37_biasadd_readvariableop_resource:,9
'dense_38_matmul_readvariableop_resource:,,6
(dense_38_biasadd_readvariableop_resource:,9
'dense_39_matmul_readvariableop_resource:,,6
(dense_39_biasadd_readvariableop_resource:,9
'dense_40_matmul_readvariableop_resource:,,6
(dense_40_biasadd_readvariableop_resource:,9
'dense_41_matmul_readvariableop_resource:,6
(dense_41_biasadd_readvariableop_resource:
identityЂ conv3d_12/BiasAdd/ReadVariableOpЂconv3d_12/Conv3D/ReadVariableOpЂ conv3d_13/BiasAdd/ReadVariableOpЂconv3d_13/Conv3D/ReadVariableOpЂdense_36/BiasAdd/ReadVariableOpЂdense_36/MatMul/ReadVariableOpЂdense_37/BiasAdd/ReadVariableOpЂdense_37/MatMul/ReadVariableOpЂdense_38/BiasAdd/ReadVariableOpЂdense_38/MatMul/ReadVariableOpЂdense_39/BiasAdd/ReadVariableOpЂdense_39/MatMul/ReadVariableOpЂdense_40/BiasAdd/ReadVariableOpЂdense_40/MatMul/ReadVariableOpЂdense_41/BiasAdd/ReadVariableOpЂdense_41/MatMul/ReadVariableOp
zero_padding3d_6/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     
zero_padding3d_6/PadPadinputs_0&zero_padding3d_6/Pad/paddings:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
conv3d_12/Conv3D/ReadVariableOpReadVariableOp(conv3d_12_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0Щ
conv3d_12/Conv3DConv3Dzero_padding3d_6/Pad:output:0'conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	

 conv3d_12/BiasAdd/ReadVariableOpReadVariableOp)conv3d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv3d_12/BiasAddBiasAddconv3d_12/Conv3D:output:0(conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџp
conv3d_12/ReluReluconv3d_12/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџР
max_pooling3d_12/MaxPool3D	MaxPool3Dconv3d_12/Relu:activations:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingSAME*
strides	

conv3d_13/Conv3D/ReadVariableOpReadVariableOp(conv3d_13_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0Я
conv3d_13/Conv3DConv3D#max_pooling3d_12/MaxPool3D:output:0'conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
paddingSAME*
strides	

 conv3d_13/BiasAdd/ReadVariableOpReadVariableOp)conv3d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv3d_13/BiasAddBiasAddconv3d_13/Conv3D:output:0(conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџp
conv3d_13/ReluReluconv3d_13/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџР
max_pooling3d_13/MaxPool3D	MaxPool3Dconv3d_13/Relu:activations:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingSAME*
strides	
`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_6/ReshapeReshape#max_pooling3d_13/MaxPool3D:output:0flatten_6/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
concatenate_6/concatConcatV2inputs_1flatten_6/Reshape:output:0"concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0
dense_36/MatMulMatMulconcatenate_6/concat:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_39/ReluReludense_39/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0
dense_40/MatMulMatMuldense_39/Relu:activations:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ,b
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ,
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0
dense_41/MatMulMatMuldense_40/Relu:activations:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџт
NoOpNoOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 conv3d_12/BiasAdd/ReadVariableOp conv3d_12/BiasAdd/ReadVariableOp2B
conv3d_12/Conv3D/ReadVariableOpconv3d_12/Conv3D/ReadVariableOp2D
 conv3d_13/BiasAdd/ReadVariableOp conv3d_13/BiasAdd/ReadVariableOp2B
conv3d_13/Conv3D/ReadVariableOpconv3d_13/Conv3D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ц
serving_defaultв
3
cat,
serving_default_cat:0џџџџџџџџџ
A
conv9
serving_default_conv:0џџџџџџџџџ<
dense_410
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ыр
ћ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
Ѕ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer

witer

xbeta_1

ybeta_2
	zdecay
{learning_ratemЮ mЯ-mа.mбGmвHmгOmдPmеWmжXmз_mи`mйgmкhmлomмpmнvо vп-vр.vсGvтHvуOvфPvхWvцXvч_vш`vщgvъhvыovьpvэ"
	optimizer

0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15"
trackable_list_wrapper

0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ы
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ђ2я
)__inference_model_6_layer_call_fn_2828941
)__inference_model_6_layer_call_fn_2829342
)__inference_model_6_layer_call_fn_2829380
)__inference_model_6_layer_call_fn_2829198Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
о2л
D__inference_model_6_layer_call_and_return_conditional_losses_2829449
D__inference_model_6_layer_call_and_return_conditional_losses_2829518
D__inference_model_6_layer_call_and_return_conditional_losses_2829248
D__inference_model_6_layer_call_and_return_conditional_losses_2829298Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
ЯBЬ
"__inference__wrapped_model_2828703convcat"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
м2й
2__inference_zero_padding3d_6_layer_call_fn_2829563Ђ
В
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
annotationsЊ *
 
ї2є
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2829569Ђ
В
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
annotationsЊ *
 
.:,2conv3d_12/kernel
:2conv3d_12/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_12_layer_call_fn_2829578Ђ
В
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
annotationsЊ *
 
№2э
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2829589Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
м2й
2__inference_max_pooling3d_12_layer_call_fn_2829594Ђ
В
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
annotationsЊ *
 
ї2є
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2829599Ђ
В
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
annotationsЊ *
 
.:,2conv3d_13/kernel
:2conv3d_13/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_conv3d_13_layer_call_fn_2829608Ђ
В
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
annotationsЊ *
 
№2э
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2829619Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
м2й
2__inference_max_pooling3d_13_layer_call_fn_2829624Ђ
В
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
annotationsЊ *
 
ї2є
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2829629Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_flatten_6_layer_call_fn_2829634Ђ
В
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
annotationsЊ *
 
№2э
F__inference_flatten_6_layer_call_and_return_conditional_losses_2829640Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
й2ж
/__inference_concatenate_6_layer_call_fn_2829646Ђ
В
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
annotationsЊ *
 
є2ё
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2829653Ђ
В
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
annotationsЊ *
 
!:,2dense_36/kernel
:,2dense_36/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_36_layer_call_fn_2829662Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_36_layer_call_and_return_conditional_losses_2829673Ђ
В
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
annotationsЊ *
 
!:,,2dense_37/kernel
:,2dense_37/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Њnon_trainable_variables
Ћlayers
Ќmetrics
 ­layer_regularization_losses
Ўlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_37_layer_call_fn_2829682Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_37_layer_call_and_return_conditional_losses_2829693Ђ
В
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
annotationsЊ *
 
!:,,2dense_38/kernel
:,2dense_38/bias
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_38_layer_call_fn_2829702Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_38_layer_call_and_return_conditional_losses_2829713Ђ
В
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
annotationsЊ *
 
!:,,2dense_39/kernel
:,2dense_39/bias
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_39_layer_call_fn_2829722Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_39_layer_call_and_return_conditional_losses_2829733Ђ
В
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
annotationsЊ *
 
!:,,2dense_40/kernel
:,2dense_40/bias
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_40_layer_call_fn_2829742Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_40_layer_call_and_return_conditional_losses_2829753Ђ
В
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
annotationsЊ *
 
!:,2dense_41/kernel
:2dense_41/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_41_layer_call_fn_2829762Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_41_layer_call_and_return_conditional_losses_2829773Ђ
В
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
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper

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
14"
trackable_list_wrapper
0
У0
Ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBЩ
%__inference_signature_wrapper_2829558catconv"
В
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
annotationsЊ *
 
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
R

Хtotal

Цcount
Ч	variables
Ш	keras_api"
_tf_keras_metric
c

Щtotal

Ъcount
Ы
_fn_kwargs
Ь	variables
Э	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Х0
Ц1"
trackable_list_wrapper
.
Ч	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
.
Ь	variables"
_generic_user_object
3:12Adam/conv3d_12/kernel/m
!:2Adam/conv3d_12/bias/m
3:12Adam/conv3d_13/kernel/m
!:2Adam/conv3d_13/bias/m
&:$,2Adam/dense_36/kernel/m
 :,2Adam/dense_36/bias/m
&:$,,2Adam/dense_37/kernel/m
 :,2Adam/dense_37/bias/m
&:$,,2Adam/dense_38/kernel/m
 :,2Adam/dense_38/bias/m
&:$,,2Adam/dense_39/kernel/m
 :,2Adam/dense_39/bias/m
&:$,,2Adam/dense_40/kernel/m
 :,2Adam/dense_40/bias/m
&:$,2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
3:12Adam/conv3d_12/kernel/v
!:2Adam/conv3d_12/bias/v
3:12Adam/conv3d_13/kernel/v
!:2Adam/conv3d_13/bias/v
&:$,2Adam/dense_36/kernel/v
 :,2Adam/dense_36/bias/v
&:$,,2Adam/dense_37/kernel/v
 :,2Adam/dense_37/bias/v
&:$,,2Adam/dense_38/kernel/v
 :,2Adam/dense_38/bias/v
&:$,,2Adam/dense_39/kernel/v
 :,2Adam/dense_39/bias/v
&:$,,2Adam/dense_40/kernel/v
 :,2Adam/dense_40/bias/v
&:$,2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/vЭ
"__inference__wrapped_model_2828703І -.GHOPWX_`ghop]ЂZ
SЂP
NK
*'
convџџџџџџџџџ

catџџџџџџџџџ
Њ "3Њ0
.
dense_41"
dense_41џџџџџџџџџв
J__inference_concatenate_6_layer_call_and_return_conditional_losses_2829653ZЂW
PЂM
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 Љ
/__inference_concatenate_6_layer_call_fn_2829646vZЂW
PЂM
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
Њ "џџџџџџџџџО
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2829589t ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
+__inference_conv3d_12_layer_call_fn_2829578g ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџО
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2829619t-.;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
+__inference_conv3d_13_layer_call_fn_2829608g-.;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџЅ
E__inference_dense_36_layer_call_and_return_conditional_losses_2829673\GH/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ,
 }
*__inference_dense_36_layer_call_fn_2829662OGH/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ,Ѕ
E__inference_dense_37_layer_call_and_return_conditional_losses_2829693\OP/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "%Ђ"

0џџџџџџџџџ,
 }
*__inference_dense_37_layer_call_fn_2829682OOP/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "џџџџџџџџџ,Ѕ
E__inference_dense_38_layer_call_and_return_conditional_losses_2829713\WX/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "%Ђ"

0џџџџџџџџџ,
 }
*__inference_dense_38_layer_call_fn_2829702OWX/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "џџџџџџџџџ,Ѕ
E__inference_dense_39_layer_call_and_return_conditional_losses_2829733\_`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "%Ђ"

0џџџџџџџџџ,
 }
*__inference_dense_39_layer_call_fn_2829722O_`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "џџџџџџџџџ,Ѕ
E__inference_dense_40_layer_call_and_return_conditional_losses_2829753\gh/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "%Ђ"

0џџџџџџџџџ,
 }
*__inference_dense_40_layer_call_fn_2829742Ogh/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "џџџџџџџџџ,Ѕ
E__inference_dense_41_layer_call_and_return_conditional_losses_2829773\op/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_41_layer_call_fn_2829762Oop/Ђ,
%Ђ"
 
inputsџџџџџџџџџ,
Њ "џџџџџџџџџЎ
F__inference_flatten_6_layer_call_and_return_conditional_losses_2829640d;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
+__inference_flatten_6_layer_call_fn_2829634W;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2829599И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 т
2__inference_max_pooling3d_12_layer_call_fn_2829594Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2829629И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 т
2__inference_max_pooling3d_13_layer_call_fn_2829624Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџщ
D__inference_model_6_layer_call_and_return_conditional_losses_2829248  -.GHOPWX_`ghopeЂb
[ЂX
NK
*'
convџџџџџџџџџ

catџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 щ
D__inference_model_6_layer_call_and_return_conditional_losses_2829298  -.GHOPWX_`ghopeЂb
[ЂX
NK
*'
convџџџџџџџџџ

catџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 ђ
D__inference_model_6_layer_call_and_return_conditional_losses_2829449Љ -.GHOPWX_`ghopnЂk
dЂa
WT
.+
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 ђ
D__inference_model_6_layer_call_and_return_conditional_losses_2829518Љ -.GHOPWX_`ghopnЂk
dЂa
WT
.+
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 С
)__inference_model_6_layer_call_fn_2828941 -.GHOPWX_`ghopeЂb
[ЂX
NK
*'
convџџџџџџџџџ

catџџџџџџџџџ
p 

 
Њ "џџџџџџџџџС
)__inference_model_6_layer_call_fn_2829198 -.GHOPWX_`ghopeЂb
[ЂX
NK
*'
convџџџџџџџџџ

catџџџџџџџџџ
p

 
Њ "џџџџџџџџџЪ
)__inference_model_6_layer_call_fn_2829342 -.GHOPWX_`ghopnЂk
dЂa
WT
.+
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p 

 
Њ "џџџџџџџџџЪ
)__inference_model_6_layer_call_fn_2829380 -.GHOPWX_`ghopnЂk
dЂa
WT
.+
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p

 
Њ "џџџџџџџџџк
%__inference_signature_wrapper_2829558А -.GHOPWX_`ghopgЂd
Ђ 
]ЊZ
$
cat
catџџџџџџџџџ
2
conv*'
convџџџџџџџџџ"3Њ0
.
dense_41"
dense_41џџџџџџџџџ
M__inference_zero_padding3d_6_layer_call_and_return_conditional_losses_2829569И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 т
2__inference_zero_padding3d_6_layer_call_fn_2829563Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ