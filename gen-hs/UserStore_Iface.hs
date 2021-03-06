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

module UserStore_Iface where
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
import qualified Errors_Types


import UserStore_Types

class UserStore_Iface a where
  checkVersion :: a -> LT.Text -> I.Int16 -> I.Int16 -> P.IO P.Bool
  getBootstrapInfo :: a -> LT.Text -> P.IO BootstrapInfo
  authenticateLongSession :: a -> LT.Text -> LT.Text -> LT.Text -> LT.Text -> LT.Text -> LT.Text -> P.Bool -> P.IO AuthenticationResult
  completeTwoFactorAuthentication :: a -> LT.Text -> LT.Text -> LT.Text -> LT.Text -> P.IO AuthenticationResult
  revokeLongSession :: a -> LT.Text -> P.IO ()
  authenticateToBusiness :: a -> LT.Text -> P.IO AuthenticationResult
  getUser :: a -> LT.Text -> P.IO Types_Types.User
  getPublicUserInfo :: a -> LT.Text -> P.IO PublicUserInfo
  getUserUrls :: a -> LT.Text -> P.IO UserUrls
  inviteToBusiness :: a -> LT.Text -> LT.Text -> P.IO ()
  removeFromBusiness :: a -> LT.Text -> LT.Text -> P.IO ()
  updateBusinessUserIdentifier :: a -> LT.Text -> LT.Text -> LT.Text -> P.IO ()
  listBusinessUsers :: a -> LT.Text -> P.IO (Vector.Vector Types_Types.UserProfile)
  listBusinessInvitations :: a -> LT.Text -> P.Bool -> P.IO (Vector.Vector Types_Types.BusinessInvitation)
  getAccountLimits :: a -> Types_Types.ServiceLevel -> P.IO Types_Types.AccountLimits
