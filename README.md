# Bazel iOS Workshop

Welcome to the "Building an iOS App with Bazel" workshop at AppBuilders 2022!

During this workshop, we're going to take an iOS app that builds with Xcode and get it running via Bazel, Google's open-source, modular build system.

Before we start the session, please make sure that running `./setup.sh` in the repo succeeds, and that you have Xcode 13.3.x installed locally.
If you run into any issues, please post an issue in Discord!

Rough outline of the workshop:

1. Running `bazel` commands (start branch: `steps/00-warmup`)
   1. `bazel fetch`
   2. `bazel clean`
   3. `bazel build`
   4. `bazel test`
   5. `bazel run`
2. Building a basic (Swift-only) iOS App (start branch: `steps/10-swift-app`)
3. Adding dependencies (start branch: `steps/20-swift-library`)
4. Adding (:gasp:) Objective-C to the mix (start branch: `steps/30-mixed-language`)

Further topics (if you get to this point / are interested, let's spend time chatting about them!):

1. Writing macros to reduce duplication
2. Writing custom rules to implement new behavior
3. Running a matrix of tests via the command line
4. Setting up CI
