#!/bin/bash -e

echo "=== Starting project setup for namespace changes ==="
echo "=== Renaming mentions ==="
find . -type f -not -path '*/\.git/*' -not -path './\build.sh' -exec sed -i '' -e "s@module Segment@module SegmentIO@g" {} \;
find . -type f -not -path '*/\.git/*' -not -path './\build.sh' -exec sed -i '' -e "s@require 'segment@require 'segment_io@g" {} \;
find . -type f -not -path '*/\.git/*' -not -path './\build.sh' -exec sed -i '' -e "s@Segment::@SegmentIO::@g" {} \;
find . -type f -not -path '*/\.git/*' -not -path './\build.sh' -exec sed -i '' -e "s@lib/segment/@lib/segment_io/@g" {} \;

echo "=== Renaming files ==="
mv spec/segment spec/segment_io
mv lib/segment lib/segment_io
echo "=== Installing dependencies ==="
bundle install
echo "=== Running tests ==="
bundle exec rspec spec
echo "Replace finished"

