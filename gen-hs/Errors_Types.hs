{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.11.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module Errors_Types where
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T

import qualified Types_Types


data EDAMErrorCode = UNKNOWN|BAD_DATA_FORMAT|PERMISSION_DENIED|INTERNAL_ERROR|DATA_REQUIRED|LIMIT_REACHED|QUOTA_REACHED|INVALID_AUTH|AUTH_EXPIRED|DATA_CONFLICT|ENML_VALIDATION|SHARD_UNAVAILABLE|LEN_TOO_SHORT|LEN_TOO_LONG|TOO_FEW|TOO_MANY|UNSUPPORTED_OPERATION|TAKEN_DOWN|RATE_LIMIT_REACHED|BUSINESS_SECURITY_LOGIN_REQUIRED|DEVICE_LIMIT_REACHED  deriving (P.Show, P.Eq, G.Generic, TY.Typeable, P.Ord, P.Bounded)
instance P.Enum EDAMErrorCode where
  fromEnum t = case t of
    UNKNOWN -> 1
    BAD_DATA_FORMAT -> 2
    PERMISSION_DENIED -> 3
    INTERNAL_ERROR -> 4
    DATA_REQUIRED -> 5
    LIMIT_REACHED -> 6
    QUOTA_REACHED -> 7
    INVALID_AUTH -> 8
    AUTH_EXPIRED -> 9
    DATA_CONFLICT -> 10
    ENML_VALIDATION -> 11
    SHARD_UNAVAILABLE -> 12
    LEN_TOO_SHORT -> 13
    LEN_TOO_LONG -> 14
    TOO_FEW -> 15
    TOO_MANY -> 16
    UNSUPPORTED_OPERATION -> 17
    TAKEN_DOWN -> 18
    RATE_LIMIT_REACHED -> 19
    BUSINESS_SECURITY_LOGIN_REQUIRED -> 20
    DEVICE_LIMIT_REACHED -> 21
  toEnum t = case t of
    1 -> UNKNOWN
    2 -> BAD_DATA_FORMAT
    3 -> PERMISSION_DENIED
    4 -> INTERNAL_ERROR
    5 -> DATA_REQUIRED
    6 -> LIMIT_REACHED
    7 -> QUOTA_REACHED
    8 -> INVALID_AUTH
    9 -> AUTH_EXPIRED
    10 -> DATA_CONFLICT
    11 -> ENML_VALIDATION
    12 -> SHARD_UNAVAILABLE
    13 -> LEN_TOO_SHORT
    14 -> LEN_TOO_LONG
    15 -> TOO_FEW
    16 -> TOO_MANY
    17 -> UNSUPPORTED_OPERATION
    18 -> TAKEN_DOWN
    19 -> RATE_LIMIT_REACHED
    20 -> BUSINESS_SECURITY_LOGIN_REQUIRED
    21 -> DEVICE_LIMIT_REACHED
    _ -> X.throw T.ThriftException
instance H.Hashable EDAMErrorCode where
  hashWithSalt salt = H.hashWithSalt salt P.. P.fromEnum
instance QC.Arbitrary EDAMErrorCode where
  arbitrary = QC.elements (P.enumFromTo P.minBound P.maxBound)
data EDAMInvalidContactReason = BAD_ADDRESS|DUPLICATE_CONTACT|NO_CONNECTION  deriving (P.Show, P.Eq, G.Generic, TY.Typeable, P.Ord, P.Bounded)
instance P.Enum EDAMInvalidContactReason where
  fromEnum t = case t of
    BAD_ADDRESS -> 0
    DUPLICATE_CONTACT -> 1
    NO_CONNECTION -> 2
  toEnum t = case t of
    0 -> BAD_ADDRESS
    1 -> DUPLICATE_CONTACT
    2 -> NO_CONNECTION
    _ -> X.throw T.ThriftException
instance H.Hashable EDAMInvalidContactReason where
  hashWithSalt salt = H.hashWithSalt salt P.. P.fromEnum
instance QC.Arbitrary EDAMInvalidContactReason where
  arbitrary = QC.elements (P.enumFromTo P.minBound P.maxBound)
data EDAMUserException = EDAMUserException  { eDAMUserException_errorCode :: EDAMErrorCode
  , eDAMUserException_parameter :: P.Maybe LT.Text
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception EDAMUserException
instance H.Hashable EDAMUserException where
  hashWithSalt salt record = salt   `H.hashWithSalt` eDAMUserException_errorCode record   `H.hashWithSalt` eDAMUserException_parameter record  
instance QC.Arbitrary EDAMUserException where 
  arbitrary = M.liftM EDAMUserException (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_EDAMUserException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_EDAMUserException{eDAMUserException_errorCode = eDAMUserException_errorCode obj} then P.Nothing else P.Just $ default_EDAMUserException{eDAMUserException_errorCode = eDAMUserException_errorCode obj}
    , if obj == default_EDAMUserException{eDAMUserException_parameter = eDAMUserException_parameter obj} then P.Nothing else P.Just $ default_EDAMUserException{eDAMUserException_parameter = eDAMUserException_parameter obj}
    ]
from_EDAMUserException :: EDAMUserException -> T.ThriftVal
from_EDAMUserException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v2 -> P.Just (1, ("errorCode",T.TI32 $ P.fromIntegral $ P.fromEnum _v2))) $ eDAMUserException_errorCode record
  , (\_v2 -> (2, ("parameter",T.TString $ E.encodeUtf8 _v2))) <$> eDAMUserException_parameter record
  ]
write_EDAMUserException :: T.Protocol p => p -> EDAMUserException -> P.IO ()
write_EDAMUserException oprot record = T.writeVal oprot $ from_EDAMUserException record
encode_EDAMUserException :: T.StatelessProtocol p => p -> EDAMUserException -> LBS.ByteString
encode_EDAMUserException oprot record = T.serializeVal oprot $ from_EDAMUserException record
to_EDAMUserException :: T.ThriftVal -> EDAMUserException
to_EDAMUserException (T.TStruct fields) = EDAMUserException{
  eDAMUserException_errorCode = P.maybe (P.error "Missing required field: errorCode") (\(_,_val4) -> (case _val4 of {T.TI32 _val5 -> P.toEnum $ P.fromIntegral _val5; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  eDAMUserException_parameter = P.maybe (P.Nothing) (\(_,_val4) -> P.Just (case _val4 of {T.TString _val6 -> E.decodeUtf8 _val6; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_EDAMUserException _ = P.error "not a struct"
read_EDAMUserException :: T.Protocol p => p -> P.IO EDAMUserException
read_EDAMUserException iprot = to_EDAMUserException <$> T.readVal iprot (T.T_STRUCT typemap_EDAMUserException)
decode_EDAMUserException :: T.StatelessProtocol p => p -> LBS.ByteString -> EDAMUserException
decode_EDAMUserException iprot bs = to_EDAMUserException $ T.deserializeVal iprot (T.T_STRUCT typemap_EDAMUserException) bs
typemap_EDAMUserException :: T.TypeMap
typemap_EDAMUserException = Map.fromList [(1,("errorCode",T.T_I32)),(2,("parameter",T.T_STRING))]
default_EDAMUserException :: EDAMUserException
default_EDAMUserException = EDAMUserException{
  eDAMUserException_errorCode = (P.toEnum 0),
  eDAMUserException_parameter = P.Nothing}
data EDAMSystemException = EDAMSystemException  { eDAMSystemException_errorCode :: EDAMErrorCode
  , eDAMSystemException_message :: P.Maybe LT.Text
  , eDAMSystemException_rateLimitDuration :: P.Maybe I.Int32
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception EDAMSystemException
instance H.Hashable EDAMSystemException where
  hashWithSalt salt record = salt   `H.hashWithSalt` eDAMSystemException_errorCode record   `H.hashWithSalt` eDAMSystemException_message record   `H.hashWithSalt` eDAMSystemException_rateLimitDuration record  
instance QC.Arbitrary EDAMSystemException where 
  arbitrary = M.liftM EDAMSystemException (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_EDAMSystemException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_EDAMSystemException{eDAMSystemException_errorCode = eDAMSystemException_errorCode obj} then P.Nothing else P.Just $ default_EDAMSystemException{eDAMSystemException_errorCode = eDAMSystemException_errorCode obj}
    , if obj == default_EDAMSystemException{eDAMSystemException_message = eDAMSystemException_message obj} then P.Nothing else P.Just $ default_EDAMSystemException{eDAMSystemException_message = eDAMSystemException_message obj}
    , if obj == default_EDAMSystemException{eDAMSystemException_rateLimitDuration = eDAMSystemException_rateLimitDuration obj} then P.Nothing else P.Just $ default_EDAMSystemException{eDAMSystemException_rateLimitDuration = eDAMSystemException_rateLimitDuration obj}
    ]
from_EDAMSystemException :: EDAMSystemException -> T.ThriftVal
from_EDAMSystemException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v9 -> P.Just (1, ("errorCode",T.TI32 $ P.fromIntegral $ P.fromEnum _v9))) $ eDAMSystemException_errorCode record
  , (\_v9 -> (2, ("message",T.TString $ E.encodeUtf8 _v9))) <$> eDAMSystemException_message record
  , (\_v9 -> (3, ("rateLimitDuration",T.TI32 _v9))) <$> eDAMSystemException_rateLimitDuration record
  ]
write_EDAMSystemException :: T.Protocol p => p -> EDAMSystemException -> P.IO ()
write_EDAMSystemException oprot record = T.writeVal oprot $ from_EDAMSystemException record
encode_EDAMSystemException :: T.StatelessProtocol p => p -> EDAMSystemException -> LBS.ByteString
encode_EDAMSystemException oprot record = T.serializeVal oprot $ from_EDAMSystemException record
to_EDAMSystemException :: T.ThriftVal -> EDAMSystemException
to_EDAMSystemException (T.TStruct fields) = EDAMSystemException{
  eDAMSystemException_errorCode = P.maybe (P.error "Missing required field: errorCode") (\(_,_val11) -> (case _val11 of {T.TI32 _val12 -> P.toEnum $ P.fromIntegral _val12; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  eDAMSystemException_message = P.maybe (P.Nothing) (\(_,_val11) -> P.Just (case _val11 of {T.TString _val13 -> E.decodeUtf8 _val13; _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  eDAMSystemException_rateLimitDuration = P.maybe (P.Nothing) (\(_,_val11) -> P.Just (case _val11 of {T.TI32 _val14 -> _val14; _ -> P.error "wrong type"})) (Map.lookup (3) fields)
  }
to_EDAMSystemException _ = P.error "not a struct"
read_EDAMSystemException :: T.Protocol p => p -> P.IO EDAMSystemException
read_EDAMSystemException iprot = to_EDAMSystemException <$> T.readVal iprot (T.T_STRUCT typemap_EDAMSystemException)
decode_EDAMSystemException :: T.StatelessProtocol p => p -> LBS.ByteString -> EDAMSystemException
decode_EDAMSystemException iprot bs = to_EDAMSystemException $ T.deserializeVal iprot (T.T_STRUCT typemap_EDAMSystemException) bs
typemap_EDAMSystemException :: T.TypeMap
typemap_EDAMSystemException = Map.fromList [(1,("errorCode",T.T_I32)),(2,("message",T.T_STRING)),(3,("rateLimitDuration",T.T_I32))]
default_EDAMSystemException :: EDAMSystemException
default_EDAMSystemException = EDAMSystemException{
  eDAMSystemException_errorCode = (P.toEnum 0),
  eDAMSystemException_message = P.Nothing,
  eDAMSystemException_rateLimitDuration = P.Nothing}
data EDAMNotFoundException = EDAMNotFoundException  { eDAMNotFoundException_identifier :: P.Maybe LT.Text
  , eDAMNotFoundException_key :: P.Maybe LT.Text
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception EDAMNotFoundException
instance H.Hashable EDAMNotFoundException where
  hashWithSalt salt record = salt   `H.hashWithSalt` eDAMNotFoundException_identifier record   `H.hashWithSalt` eDAMNotFoundException_key record  
instance QC.Arbitrary EDAMNotFoundException where 
  arbitrary = M.liftM EDAMNotFoundException (M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_EDAMNotFoundException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_EDAMNotFoundException{eDAMNotFoundException_identifier = eDAMNotFoundException_identifier obj} then P.Nothing else P.Just $ default_EDAMNotFoundException{eDAMNotFoundException_identifier = eDAMNotFoundException_identifier obj}
    , if obj == default_EDAMNotFoundException{eDAMNotFoundException_key = eDAMNotFoundException_key obj} then P.Nothing else P.Just $ default_EDAMNotFoundException{eDAMNotFoundException_key = eDAMNotFoundException_key obj}
    ]
from_EDAMNotFoundException :: EDAMNotFoundException -> T.ThriftVal
from_EDAMNotFoundException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v17 -> (1, ("identifier",T.TString $ E.encodeUtf8 _v17))) <$> eDAMNotFoundException_identifier record
  , (\_v17 -> (2, ("key",T.TString $ E.encodeUtf8 _v17))) <$> eDAMNotFoundException_key record
  ]
write_EDAMNotFoundException :: T.Protocol p => p -> EDAMNotFoundException -> P.IO ()
write_EDAMNotFoundException oprot record = T.writeVal oprot $ from_EDAMNotFoundException record
encode_EDAMNotFoundException :: T.StatelessProtocol p => p -> EDAMNotFoundException -> LBS.ByteString
encode_EDAMNotFoundException oprot record = T.serializeVal oprot $ from_EDAMNotFoundException record
to_EDAMNotFoundException :: T.ThriftVal -> EDAMNotFoundException
to_EDAMNotFoundException (T.TStruct fields) = EDAMNotFoundException{
  eDAMNotFoundException_identifier = P.maybe (P.Nothing) (\(_,_val19) -> P.Just (case _val19 of {T.TString _val20 -> E.decodeUtf8 _val20; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  eDAMNotFoundException_key = P.maybe (P.Nothing) (\(_,_val19) -> P.Just (case _val19 of {T.TString _val21 -> E.decodeUtf8 _val21; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_EDAMNotFoundException _ = P.error "not a struct"
read_EDAMNotFoundException :: T.Protocol p => p -> P.IO EDAMNotFoundException
read_EDAMNotFoundException iprot = to_EDAMNotFoundException <$> T.readVal iprot (T.T_STRUCT typemap_EDAMNotFoundException)
decode_EDAMNotFoundException :: T.StatelessProtocol p => p -> LBS.ByteString -> EDAMNotFoundException
decode_EDAMNotFoundException iprot bs = to_EDAMNotFoundException $ T.deserializeVal iprot (T.T_STRUCT typemap_EDAMNotFoundException) bs
typemap_EDAMNotFoundException :: T.TypeMap
typemap_EDAMNotFoundException = Map.fromList [(1,("identifier",T.T_STRING)),(2,("key",T.T_STRING))]
default_EDAMNotFoundException :: EDAMNotFoundException
default_EDAMNotFoundException = EDAMNotFoundException{
  eDAMNotFoundException_identifier = P.Nothing,
  eDAMNotFoundException_key = P.Nothing}
data EDAMInvalidContactsException = EDAMInvalidContactsException  { eDAMInvalidContactsException_contacts :: (Vector.Vector Types_Types.Contact)
  , eDAMInvalidContactsException_parameter :: P.Maybe LT.Text
  , eDAMInvalidContactsException_reasons :: P.Maybe (Vector.Vector EDAMInvalidContactReason)
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception EDAMInvalidContactsException
instance H.Hashable EDAMInvalidContactsException where
  hashWithSalt salt record = salt   `H.hashWithSalt` eDAMInvalidContactsException_contacts record   `H.hashWithSalt` eDAMInvalidContactsException_parameter record   `H.hashWithSalt` eDAMInvalidContactsException_reasons record  
instance QC.Arbitrary EDAMInvalidContactsException where 
  arbitrary = M.liftM EDAMInvalidContactsException (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_EDAMInvalidContactsException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_EDAMInvalidContactsException{eDAMInvalidContactsException_contacts = eDAMInvalidContactsException_contacts obj} then P.Nothing else P.Just $ default_EDAMInvalidContactsException{eDAMInvalidContactsException_contacts = eDAMInvalidContactsException_contacts obj}
    , if obj == default_EDAMInvalidContactsException{eDAMInvalidContactsException_parameter = eDAMInvalidContactsException_parameter obj} then P.Nothing else P.Just $ default_EDAMInvalidContactsException{eDAMInvalidContactsException_parameter = eDAMInvalidContactsException_parameter obj}
    , if obj == default_EDAMInvalidContactsException{eDAMInvalidContactsException_reasons = eDAMInvalidContactsException_reasons obj} then P.Nothing else P.Just $ default_EDAMInvalidContactsException{eDAMInvalidContactsException_reasons = eDAMInvalidContactsException_reasons obj}
    ]
from_EDAMInvalidContactsException :: EDAMInvalidContactsException -> T.ThriftVal
from_EDAMInvalidContactsException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v24 -> P.Just (1, ("contacts",T.TList (T.T_STRUCT Types_Types.typemap_Contact) $ P.map (\_v26 -> Types_Types.from_Contact _v26) $ Vector.toList _v24))) $ eDAMInvalidContactsException_contacts record
  , (\_v24 -> (2, ("parameter",T.TString $ E.encodeUtf8 _v24))) <$> eDAMInvalidContactsException_parameter record
  , (\_v24 -> (3, ("reasons",T.TList T.T_I32 $ P.map (\_v28 -> T.TI32 $ P.fromIntegral $ P.fromEnum _v28) $ Vector.toList _v24))) <$> eDAMInvalidContactsException_reasons record
  ]
write_EDAMInvalidContactsException :: T.Protocol p => p -> EDAMInvalidContactsException -> P.IO ()
write_EDAMInvalidContactsException oprot record = T.writeVal oprot $ from_EDAMInvalidContactsException record
encode_EDAMInvalidContactsException :: T.StatelessProtocol p => p -> EDAMInvalidContactsException -> LBS.ByteString
encode_EDAMInvalidContactsException oprot record = T.serializeVal oprot $ from_EDAMInvalidContactsException record
to_EDAMInvalidContactsException :: T.ThriftVal -> EDAMInvalidContactsException
to_EDAMInvalidContactsException (T.TStruct fields) = EDAMInvalidContactsException{
  eDAMInvalidContactsException_contacts = P.maybe (P.error "Missing required field: contacts") (\(_,_val30) -> (case _val30 of {T.TList _ _val31 -> (Vector.fromList $ P.map (\_v32 -> (case _v32 of {T.TStruct _val33 -> (Types_Types.to_Contact (T.TStruct _val33)); _ -> P.error "wrong type"})) _val31); _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  eDAMInvalidContactsException_parameter = P.maybe (P.Nothing) (\(_,_val30) -> P.Just (case _val30 of {T.TString _val34 -> E.decodeUtf8 _val34; _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  eDAMInvalidContactsException_reasons = P.maybe (P.Nothing) (\(_,_val30) -> P.Just (case _val30 of {T.TList _ _val35 -> (Vector.fromList $ P.map (\_v36 -> (case _v36 of {T.TI32 _val37 -> P.toEnum $ P.fromIntegral _val37; _ -> P.error "wrong type"})) _val35); _ -> P.error "wrong type"})) (Map.lookup (3) fields)
  }
to_EDAMInvalidContactsException _ = P.error "not a struct"
read_EDAMInvalidContactsException :: T.Protocol p => p -> P.IO EDAMInvalidContactsException
read_EDAMInvalidContactsException iprot = to_EDAMInvalidContactsException <$> T.readVal iprot (T.T_STRUCT typemap_EDAMInvalidContactsException)
decode_EDAMInvalidContactsException :: T.StatelessProtocol p => p -> LBS.ByteString -> EDAMInvalidContactsException
decode_EDAMInvalidContactsException iprot bs = to_EDAMInvalidContactsException $ T.deserializeVal iprot (T.T_STRUCT typemap_EDAMInvalidContactsException) bs
typemap_EDAMInvalidContactsException :: T.TypeMap
typemap_EDAMInvalidContactsException = Map.fromList [(1,("contacts",(T.T_LIST (T.T_STRUCT Types_Types.typemap_Contact)))),(2,("parameter",T.T_STRING)),(3,("reasons",(T.T_LIST T.T_I32)))]
default_EDAMInvalidContactsException :: EDAMInvalidContactsException
default_EDAMInvalidContactsException = EDAMInvalidContactsException{
  eDAMInvalidContactsException_contacts = Vector.empty,
  eDAMInvalidContactsException_parameter = P.Nothing,
  eDAMInvalidContactsException_reasons = P.Nothing}
