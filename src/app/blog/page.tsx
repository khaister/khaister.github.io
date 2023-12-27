import Link from "next/link"

export default async function Blog() {
  const posts = await getPosts();
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <h1>Posts</h1>
      <div>
        {posts.map((post:any) => {
          return (
            <article key={post.slug}>
              <h2>
                <Link href={post.permalink}>{post.title}</Link>
              </h2>
            </article>
          )
        })}
      </div>
    </main>
  )
}

async function getPosts(): Promise<any> {
  const promise = new Promise((resolve, reject) => {
    resolve([
      {
        title: "first post",
        createdOn: "2023-12-26",
        permalink: "/blog/first-post",
        slug: "first-post",
      }
    ])
  })
  return promise;
}