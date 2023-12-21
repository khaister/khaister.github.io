import type { Metadata } from 'next'
import Link from 'next/link';
import { Inter } from 'next/font/google'
import './globals.css'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'Khai',
  description: 'A website by Khai',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <nav>
          <div><Link href="/">Home</Link></div>
          <div><Link href="/blog">Blog</Link></div>
        </nav>
        {children}
      </body>
    </html>
  )
}
