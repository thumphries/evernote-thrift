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

module Types_Consts where
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

import qualified Limits_Types


import Types_Types
cLASSIFICATION_RECIPE_USER_NON_RECIPE :: LT.Text
cLASSIFICATION_RECIPE_USER_NON_RECIPE = "000"

cLASSIFICATION_RECIPE_USER_RECIPE :: LT.Text
cLASSIFICATION_RECIPE_USER_RECIPE = "001"

cLASSIFICATION_RECIPE_SERVICE_RECIPE :: LT.Text
cLASSIFICATION_RECIPE_SERVICE_RECIPE = "002"

eDAM_NOTE_SOURCE_WEB_CLIP :: LT.Text
eDAM_NOTE_SOURCE_WEB_CLIP = "web.clip"

eDAM_NOTE_SOURCE_WEB_CLIP_SIMPLIFIED :: LT.Text
eDAM_NOTE_SOURCE_WEB_CLIP_SIMPLIFIED = "Clearly"

eDAM_NOTE_SOURCE_MAIL_CLIP :: LT.Text
eDAM_NOTE_SOURCE_MAIL_CLIP = "mail.clip"

eDAM_NOTE_SOURCE_MAIL_SMTP_GATEWAY :: LT.Text
eDAM_NOTE_SOURCE_MAIL_SMTP_GATEWAY = "mail.smtp"

