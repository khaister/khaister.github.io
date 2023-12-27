
const withMDX = require('@next/mdx')();

/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',
  pageExtensions: ['ts', 'tsx', 'js', 'jsx', 'md', 'mdx'],
}

module.exports = withMDX(nextConfig)
