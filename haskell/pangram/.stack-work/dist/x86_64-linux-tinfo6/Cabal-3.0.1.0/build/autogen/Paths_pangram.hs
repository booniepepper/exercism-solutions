{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_pangram (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [2,0,0,12] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/workplace/hiljusti/exercism/haskell/pangram/.stack-work/install/x86_64-linux-tinfo6/2555834c283d2f6ee5954b5c245c19171e6912a4bd19774b8b0afb86f1c42cb6/8.8.4/bin"
libdir     = "/workplace/hiljusti/exercism/haskell/pangram/.stack-work/install/x86_64-linux-tinfo6/2555834c283d2f6ee5954b5c245c19171e6912a4bd19774b8b0afb86f1c42cb6/8.8.4/lib/x86_64-linux-ghc-8.8.4/pangram-2.0.0.12-CGTRlfwTyJvLD3VBP5kH9h"
dynlibdir  = "/workplace/hiljusti/exercism/haskell/pangram/.stack-work/install/x86_64-linux-tinfo6/2555834c283d2f6ee5954b5c245c19171e6912a4bd19774b8b0afb86f1c42cb6/8.8.4/lib/x86_64-linux-ghc-8.8.4"
datadir    = "/workplace/hiljusti/exercism/haskell/pangram/.stack-work/install/x86_64-linux-tinfo6/2555834c283d2f6ee5954b5c245c19171e6912a4bd19774b8b0afb86f1c42cb6/8.8.4/share/x86_64-linux-ghc-8.8.4/pangram-2.0.0.12"
libexecdir = "/workplace/hiljusti/exercism/haskell/pangram/.stack-work/install/x86_64-linux-tinfo6/2555834c283d2f6ee5954b5c245c19171e6912a4bd19774b8b0afb86f1c42cb6/8.8.4/libexec/x86_64-linux-ghc-8.8.4/pangram-2.0.0.12"
sysconfdir = "/workplace/hiljusti/exercism/haskell/pangram/.stack-work/install/x86_64-linux-tinfo6/2555834c283d2f6ee5954b5c245c19171e6912a4bd19774b8b0afb86f1c42cb6/8.8.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "pangram_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "pangram_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "pangram_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "pangram_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "pangram_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "pangram_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
