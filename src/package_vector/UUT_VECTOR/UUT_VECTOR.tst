-- VectorCAST 24 (02/13/24)
-- Test Case Script
--
-- Environment    : UUT_VECTOR
-- Unit(s) Under Test: vector
--
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Unit: vector

-- Subprogram: get_vector_product

-- Test Case: get_vector_2dim
TEST.UNIT:vector
TEST.SUBPROGRAM:get_vector_product
TEST.NEW
TEST.NAME:get_vector_2dim
TEST.VALUE:vector.get_vector_product.v1.x:1.0
TEST.VALUE:vector.get_vector_product.v1.y:2.0
TEST.VALUE:vector.get_vector_product.v2.x:1.0
TEST.VALUE:vector.get_vector_product.v2.y:2.0
TEST.EXPECTED:vector.get_vector_product.return:5.0
TEST.VARIANT_LOGIC_NAME:tc_2_dim
TEST.END

-- Test Case: get_vector_3dim
TEST.UNIT:vector
TEST.SUBPROGRAM:get_vector_product
TEST.NEW
TEST.NAME:get_vector_3dim
TEST.VALUE:vector.get_vector_product.v1.x:1.0
TEST.VALUE:vector.get_vector_product.v1.y:2.0
TEST.VALUE:vector.get_vector_product.v1.z:3.0
TEST.VALUE:vector.get_vector_product.v2.x:1.0
TEST.VALUE:vector.get_vector_product.v2.y:2.0
TEST.VALUE:vector.get_vector_product.v2.z:3.0
TEST.EXPECTED:vector.get_vector_product.return:14.0
TEST.VARIANT_LOGIC_NAME:tc_3_dim
TEST.END

-- Subprogram: get_vector_x

-- Test Case: get_vector_x.001
TEST.UNIT:vector
TEST.SUBPROGRAM:get_vector_x
TEST.NEW
TEST.NAME:get_vector_x.001
TEST.VALUE:vector.get_vector_x.v.x:1.0
TEST.VALUE:vector.get_vector_x.v.y:2.0
TEST.EXPECTED:vector.get_vector_x.return:1.0
TEST.END

-- Subprogram: get_vector_y

-- Test Case: get_vector_y.001
TEST.UNIT:vector
TEST.SUBPROGRAM:get_vector_y
TEST.NEW
TEST.NAME:get_vector_y.001
TEST.VALUE:vector.get_vector_y.v.x:1.0
TEST.VALUE:vector.get_vector_y.v.y:2.0
TEST.EXPECTED:vector.get_vector_y.return:2.0
TEST.END

-- Subprogram: get_vector_z

-- Test Case: get_vector_z.001
TEST.UNIT:vector
TEST.SUBPROGRAM:get_vector_z
TEST.NEW
TEST.NAME:get_vector_z.001
TEST.VALUE:vector.get_vector_z.v.x:1.0
TEST.VALUE:vector.get_vector_z.v.y:2.0
TEST.VALUE:vector.get_vector_z.v.z:3.0
TEST.EXPECTED:vector.get_vector_z.return:3.0
TEST.END
