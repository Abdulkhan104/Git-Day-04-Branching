<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#0ea5e9" />
  <title>Abdul — Single Page</title>
  <meta name="description" content="A modern, responsive single-page HTML template with sections for hero, features, projects, products, and contact." />
  <style>
    :root {
      --bg: #0b0c10;
      --panel: #111318;
      --text: #e6eaf2;
      --muted: #aab3c5;
      --brand: #0ea5e9; /* sky-500 */
      --brand-2: #22d3ee; /* cyan-400 */<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#0ea5e9" />
  <title>Abdul — Single Page</title>
  <meta name="description" content="A modern, responsive single-page HTML template with sections for hero, features, projects, products, and contact." />
  <style>
    :root {
      --bg: #0b0c10;
      --panel: #111318;
      --text: #e6eaf2;
      --muted: #aab3c5;
      --brand: #0ea5e9; /* sky-500 */
      --brand-2: #22d3ee; /* cyan-400 */
      --ring: rgba(34, 211, 238, 0.35);
      --shadow: 0 10px 30px rgba(2, 6, 23, 0.45);
      --radius: 16px;
    }

    .light {
      --bg: #f7f9fc;
      --panel: #ffffff;
      --text: #0b1220;
      --muted: #5b6474;
      --brand: #0ea5e9;
      --brand-2: #22d3ee;
      --ring: rgba(14, 165, 233, 0.25);
      --shadow: 0 10px 24px rgba(2, 6, 23, 0.08);
    }

    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      margin: 0;
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, Helvetica Neue, Arial, "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg, var(--bg), #0b1324 60%, var(--bg));
      color: var(--text);
    }

    /* Layout */
    .container { max-width: 1080px; margin: 0 auto; padding: 0 20px; }
    section { padding: 80px 0; }

    /* Header */
    header {
      position: sticky; top: 0; z-index: 50;
      background: rgba(10, 11, 15, 0.65);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(255,255,255,0.06);
    }
    .nav { display: flex; align-items: center; justify-content: space-between; gap: 16px; height: 64px; }
    .brand {
      display:flex; align-items:center; gap:10px; font-weight: 800; letter-spacing: .3px;
    }
    .logo {
      inline-size: 36px; block-size: 36px; border-radius: 12px;
      background: linear-gradient(135deg, var(--brand), var(--brand-2));
      box-shadow: var(--shadow);
    }
    nav a { color: var(--text); text-decoration: none; opacity: .85; font-weight: 600; }
    nav a:hover { opacity: 1; }
    .nav-links { display:flex; gap: 20px; align-items:center; }

    .btn { border: 0; background: linear-gradient(135deg, var(--brand), var(--brand-2)); color: #0b0c10; padding: 12px 18px; border-radius: 999px; font-weight: 800; box-shadow: var(--shadow); cursor: pointer; }
    .btn.secondary { background: transparent; color: var(--text); border: 1px solid rgba(255,255,255,.12); }

    .menu-toggle { display:none; background:transparent; border:1px solid rgba(255,255,255,.1); color:var(--text); padding:8px 12px; border-radius:12px; }

    /* Hero */
    .hero { display: grid; grid-template-columns: 1.2fr 1fr; gap: 28px; align-items: center; }
    .hero h1 { font-size: clamp(28px, 5vw, 48px); line-height: 1.05; margin: 0 0 12px; }
    .hero p { color: var(--muted); margin: 0 0 24px; font-size: clamp(14px, 2.5vw, 18px); }
    .hero-cta { display:flex; gap:12px; flex-wrap:wrap; }

    .glass {
      background: linear-gradient(180deg, rgba(255,255,255,0.06), rgba(255,255,255,0.02));
      border: 1px solid rgba(255,255,255,0.10);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
    }

    .hero-card { padding: 18px; display:grid; gap:10px; }
    .hero-badges { display:flex; gap:10px; flex-wrap:wrap; }
    .badge { padding: 6px 10px; border-radius: 999px; font-size: 12px; background: rgba(255,255,255,.06); border: 1px solid rgba(255,255,255,.1); }

    /* Features */
    .grid { display:grid; gap: 18px; }
    .grid.features { grid-template-columns: repeat(3, 1fr); }
    .card { padding: 18px; }
    .card h3 { margin: 0 0 6px; font-size: 18px; }
    .card p { margin: 0; color: var(--muted); font-size: 14px; }

    /* Showcase / Products */
    .grid.showcase { grid-template-columns: repeat(3, 1fr); }
    .item { overflow:hidden; }
    .item img { width:100%; aspect-ratio: 16/10; object-fit: cover; border-radius: 12px; display:block; }
    .item h4 { margin: 10px 0 4px; }
    .price { color: var(--brand-2); font-weight: 800; }

    /* About */
    .about { display:grid; grid-template-columns: 1fr 1fr; gap: 24px; align-items:center; }
    .about img { width:100%; border-radius: 16px; box-shadow: var(--shadow); }

    /* Projects */
    .grid.projects { grid-template-columns: repeat(3, 1fr); }
    .project { position:relative; overflow:hidden; }
    .project .tag { position:absolute; top:10px; left:10px; font-size:12px; }

    /* Contact */
    form { display:grid; gap:12px; }
    input, textarea { width:100%; padding: 12px 14px; border-radius: 12px; border: 1px solid rgba(255,255,255,.12); background: rgba(255,255,255,.03); color: var(--text); outline: none; }
    input:focus, textarea:focus { box-shadow: 0 0 0 4px var(--ring); border-color: transparent; }

    /* Footer */
    footer { padding: 28px 0 60px; color: var(--muted); text-align:center; }

    /* Utilities */
    .row { display:flex; gap:12px; align-items:center; flex-wrap:wrap; }
    .sp-between { justify-content: space-between; }
    .muted { color: var(--muted); }
    .center { text-align:center; }
    .title { font-size: clamp(22px, 4vw, 36px); margin: 0 0 18px; }
    .subtitle { margin: 0 auto 28px; max-width: 720px; color: var(--muted); }

    /* Animations */
    @keyframes float { 0% { transform: translateY(0) } 50% { transform: translateY(-6px) } 100% { transform: translateY(0) } }
    @keyframes fadeUp { from { opacity: 0; transform: translateY(12px) } to { opacity: 1; transform: translateY(0) } }
    .animate { animation: fadeUp .7s ease both; }

    /* Responsive */
    @media (max-width: 900px) {
      .hero { grid-template-columns: 1fr; }
      .about { grid-template-columns: 1fr; }
      .grid.features, .grid.showcase, .grid.projects { grid-template-columns: 1fr 1fr; }
      .nav-links { display:none; position: absolute; top:64px; right: 20px; background: var(--panel); padding: 12px; border-radius: 12px; border: 1px solid rgba(255,255,255,.1); box-shadow: var(--shadow); }
      .menu-toggle { display:inline-flex; }
    }
    @media (max-width: 560px) {
      .grid.features, .grid.showcase, .grid.projects { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container nav">
      <div class="brand">
        <div class="logo" aria-hidden="true"></div>
        <span>Abdul</span>
      </div>
      <nav class="nav-links" id="navLinks" aria-label="Primary">
        <a href="#home">Home</a>
        <a href="#features">Features</a>
        <a href="#showcase">Showcase</a>
        <a href="#projects">Projects</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
      </nav>
      <div class="row">
        <button class="btn secondary" id="themeToggle" aria-label="Toggle theme">🌓</button>
        <button class="menu-toggle" id="menuToggle" aria-expanded="false" aria-controls="navLinks">Menu</button>
      </div>
    </div>
  </header>

  <main id="home" class="container" style="padding-top: 32px;">
    <!-- Hero -->
    <section class="hero">
      <div>
        <h1 class="animate">Build fast. Look modern. Ship proudly.</h1>
        <p class="animate" style="animation-delay:.08s">A clean, responsive one-page template with everything you need: hero, features, showcase, projects, about, and a contact form. Drop in your content and ship.</p>
        <div class="hero-cta animate" style="animation-delay:.12s">
          <a class="btn" href="#showcase">Explore Showcase</a>
          <a class="btn secondary" href="#contact">Contact Me</a>
        </div>
        <div class="hero-badges animate" style="animation-delay:.16s">
          <span class="badge">HTML + CSS + JS</span>
          <span class="badge">Dark / Light</span>
          <span class="badge">Fully Responsive</span>
        </div>
      </div>
      <div class="hero-card glass animate" style="animation-delay:.1s">
        <div class="row sp-between">
          <strong>Quick Start</strong>
          <span class="muted">~1 min</span>
        </div>
        <ol class="muted" style="margin:0 0 8px 16px;">
          <li>Replace texts & images</li>
          <li>Update links</li>
          <li>Deploy to your host</li>
        </ol>
        <div class="row">
          <input aria-label="email" placeholder="your@email.com" />
          <button class="btn" onclick="alert('Demo only 🙂')">Get Updates</button>
        </div>
      </div>
    </section>

    <!-- Features -->
    <section id="features">
      <h2 class="title center">Features that matter</h2>
      <p class="subtitle center">Accessible, fast, and elegant. The template is crafted with sensible defaults so you can focus on your content.</p>
      <div class="grid features">
        <article class="card glass">
          <h3>Responsive Grid</h3>
          <p>Works great on mobile, tablet, and desktop with minimal tweaking.</p>
        </article>
        <article class="card glass">
          <h3>Dark / Light</h3>
          <p>Built-in theme switcher with local preference persistence.</p>
        </article>
        <article class="card glass">
          <h3>Vanilla JS</h3>
          <p>No frameworks required. Easy to understand and extend.</p>
        </article>
      </div>
    </section>

    <!-- Showcase / Products -->
    <section id="showcase">
      <h2 class="title center">Showcase / Products</h2>
      <p class="subtitle center">Use this grid for portfolio pieces, items, or case studies.</p>
      <div class="grid showcase">
        <div class="item glass card">
          <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?q=80&w=1200&auto=format&fit=crop" alt="Laptop on a desk" loading="lazy" />
          <h4>Dashboard UI</h4>
          <p class="muted">Elegant admin dashboard concept.</p>
          <div class="row sp-between">
            <span class="price">$29</span>
            <button class="btn" onclick="addToCart('Dashboard UI')">Add</button>
          </div>
        </div>
        <div class="item glass card">
          <img src="https://images.unsplash.com/photo-1547658719-da2b51169166?q=80&w=1200&auto=format&fit=crop" alt="Minimal phone mockup" loading="lazy" />
          <h4>Mobile Kit</h4>
          <p class="muted">Clean components for apps.</p>
          <div class="row sp-between">
            <span class="price">$19</span>
            <button class="btn" onclick="addToCart('Mobile Kit')">Add</button>
          </div>
        </div>
        <div class="item glass card">
          <img src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?q=80&w=1200&auto=format&fit=crop" alt="Colorful gradients" loading="lazy" />
          <h4>Gradient Pack</h4>
          <p class="muted">Lovely backgrounds and shapes.</p>
          <div class="row sp-between">
            <span class="price">$9</span>
            <button class="btn" onclick="addToCart('Gradient Pack')">Add</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Projects -->
    <section id="projects">
      <h2 class="title center">Recent Projects</h2>
      <p class="subtitle center">A simple grid you can link to GitHub repos, case studies, or live demos.</p>
      <div class="grid projects">
        <article class="project glass card">
          <span class="badge tag">AWS</span>
          <h3>Serverless API</h3>
          <p>API Gateway + Lambda with JWT auth and CI/CD.</p>
          <a href="#" class="muted">View →</a>
        </article>
        <article class="project glass card">
          <span class="badge tag">E‑commerce</span>
          <h3>PremiumShop</h3>
          <p>Custom storefront with cart, filters, and MySQL backend.</p>
          <a href="#" class="muted">Live Demo →</a>
        </article>
        <article class="project glass card">
          <span class="badge tag">Media</span>
          <h3>Streaming App</h3>
          <p>Secure uploads to S3, signed URLs, and admin dashboard.</p>
          <a href="#" class="muted">Case Study →</a>
        </article>
      </div>
    </section>

    <!-- About -->
    <section id="about" class="about">
      <div>
        <h2 class="title">About Me</h2>
        <p class="muted">I build fast, reliable web apps on AWS with clean frontends and scalable backends. This template is a starting point—replace the content and make it yours.</p>
        <ul class="muted">
          <li>⚡ Performance-focused</li>
          <li>🔒 Security-first architecture</li>
          <li>🛠️ Automated CI/CD</li>
        </ul>
      </div>
      <img src="https://images.unsplash.com/photo-1520975916090-3105956dac38?q=80&w=1200&auto=format&fit=crop" alt="Working setup on a desk" loading="lazy" />
    </section>

    <!-- Contact -->
    <section id="contact">
      <h2 class="title center">Get in touch</h2>
      <p class="subtitle center">Have a project in mind or just want to say hi? Drop a message.</p>
      <div class="glass card" style="max-width:720px;margin:0 auto;">
        <form id="contactForm">
          <div class="row">
            <input required name="name" placeholder="Your name" />
            <input required type="email" name="email" placeholder="Email address" />
          </div>
          <textarea required name="message" rows="5" placeholder="Your message"></textarea>
          <div class="row sp-between">
            <label class="muted"><input type="checkbox" name="updates" /> Send me occasional updates</label>
            <button class="btn" type="submit">Send Message</button>
          </div>
        </form>
        <p id="status" class="muted" role="status" style="margin-top:8px;display:none;">Sending…</p>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <p>© <span id="year"></span> YourBrand. Crafted with ♥.</p>
    </div>
  </footer>

  <script>
    // Theme: persist preference
    const root = document.documentElement;
    const body = document.body;
    const saved = localStorage.getItem('theme');
    if (saved === 'light') body.classList.add('light');

    document.getElementById('themeToggle').addEventListener('click', () => {
      body.classList.toggle('light');
      localStorage.setItem('theme', body.classList.contains('light') ? 'light' : 'dark');
    });

    // Mobile nav toggle
    const menuBtn = document.getElementById('menuToggle');
    const nav = document.getElementById('navLinks');
    menuBtn.addEventListener('click', () => {
      const open = nav.style.display === 'flex';
      nav.style.display = open ? 'none' : 'flex';
      nav.style.flexDirection = 'column';
      menuBtn.setAttribute('aria-expanded', String(!open));
    });

    // Contact form (demo only)
    const form = document.getElementById('contactForm');
    const status = document.getElementById('status');
    form.addEventListener('submit', (e) => {
      e.preventDefault();
      status.style.display = 'block';
      status.textContent = 'Sending…';
      setTimeout(() => {
        status.textContent = 'Thanks! I will get back to you shortly.';
      }, 800);
    });

    // Footer year
    document.getElementById('year').textContent = new Date().getFullYear();

    // Simple cart demo
    function addToCart(name) {
      alert(`${name} added to cart (demo).`);
    }
    window.addToCart = addToCart;
  </script>
</body>
</html>

      --ring: rgba(34, 211, 238, 0.35);
      --shadow: 0 10px 30px rgba(2, 6, 23, 0.45);
      --radius: 16px;
    }

    .light {
      --bg: #f7f9fc;
      --panel: #ffffff;
      --text: #0b1220;
      --muted: #5b6474;
      --brand: #0ea5e9;
      --brand-2: #22d3ee;
      --ring: rgba(14, 165, 233, 0.25);
      --shadow: 0 10px 24px rgba(2, 6, 23, 0.08);
    }

    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      margin: 0;
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, Helvetica Neue, Arial, "Apple Color Emoji", "Segoe UI Emoji";
      background: linear-gradient(180deg, var(--bg), #0b1324 60%, var(--bg));
      color: var(--text);
    }

    /* Layout */
    .container { max-width: 1080px; margin: 0 auto; padding: 0 20px; }
    section { padding: 80px 0; }

    /* Header */
    header {
      position: sticky; top: 0; z-index: 50;
      background: rgba(10, 11, 15, 0.65);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(255,255,255,0.06);
    }
    .nav { display: flex; align-items: center; justify-content: space-between; gap: 16px; height: 64px; }
    .brand {
      display:flex; align-items:center; gap:10px; font-weight: 800; letter-spacing: .3px;
    }
    .logo {
      inline-size: 36px; block-size: 36px; border-radius: 12px;
      background: linear-gradient(135deg, var(--brand), var(--brand-2));
      box-shadow: var(--shadow);
    }
    nav a { color: var(--text); text-decoration: none; opacity: .85; font-weight: 600; }
    nav a:hover { opacity: 1; }
    .nav-links { display:flex; gap: 20px; align-items:center; }

    .btn { border: 0; background: linear-gradient(135deg, var(--brand), var(--brand-2)); color: #0b0c10; padding: 12px 18px; border-radius: 999px; font-weight: 800; box-shadow: var(--shadow); cursor: pointer; }
    .btn.secondary { background: transparent; color: var(--text); border: 1px solid rgba(255,255,255,.12); }

    .menu-toggle { display:none; background:transparent; border:1px solid rgba(255,255,255,.1); color:var(--text); padding:8px 12px; border-radius:12px; }

    /* Hero */
    .hero { display: grid; grid-template-columns: 1.2fr 1fr; gap: 28px; align-items: center; }
    .hero h1 { font-size: clamp(28px, 5vw, 48px); line-height: 1.05; margin: 0 0 12px; }
    .hero p { color: var(--muted); margin: 0 0 24px; font-size: clamp(14px, 2.5vw, 18px); }
    .hero-cta { display:flex; gap:12px; flex-wrap:wrap; }

    .glass {
      background: linear-gradient(180deg, rgba(255,255,255,0.06), rgba(255,255,255,0.02));
      border: 1px solid rgba(255,255,255,0.10);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
    }

    .hero-card { padding: 18px; display:grid; gap:10px; }
    .hero-badges { display:flex; gap:10px; flex-wrap:wrap; }
    .badge { padding: 6px 10px; border-radius: 999px; font-size: 12px; background: rgba(255,255,255,.06); border: 1px solid rgba(255,255,255,.1); }

    /* Features */
    .grid { display:grid; gap: 18px; }
    .grid.features { grid-template-columns: repeat(3, 1fr); }
    .card { padding: 18px; }
    .card h3 { margin: 0 0 6px; font-size: 18px; }
    .card p { margin: 0; color: var(--muted); font-size: 14px; }

    /* Showcase / Products */
    .grid.showcase { grid-template-columns: repeat(3, 1fr); }
    .item { overflow:hidden; }
    .item img { width:100%; aspect-ratio: 16/10; object-fit: cover; border-radius: 12px; display:block; }
    .item h4 { margin: 10px 0 4px; }
    .price { color: var(--brand-2); font-weight: 800; }

    /* About */
    .about { display:grid; grid-template-columns: 1fr 1fr; gap: 24px; align-items:center; }
    .about img { width:100%; border-radius: 16px; box-shadow: var(--shadow); }

    /* Projects */
    .grid.projects { grid-template-columns: repeat(3, 1fr); }
    .project { position:relative; overflow:hidden; }
    .project .tag { position:absolute; top:10px; left:10px; font-size:12px; }

    /* Contact */
    form { display:grid; gap:12px; }
    input, textarea { width:100%; padding: 12px 14px; border-radius: 12px; border: 1px solid rgba(255,255,255,.12); background: rgba(255,255,255,.03); color: var(--text); outline: none; }
    input:focus, textarea:focus { box-shadow: 0 0 0 4px var(--ring); border-color: transparent; }

    /* Footer */
    footer { padding: 28px 0 60px; color: var(--muted); text-align:center; }

    /* Utilities */
    .row { display:flex; gap:12px; align-items:center; flex-wrap:wrap; }
    .sp-between { justify-content: space-between; }
    .muted { color: var(--muted); }
    .center { text-align:center; }
    .title { font-size: clamp(22px, 4vw, 36px); margin: 0 0 18px; }
    .subtitle { margin: 0 auto 28px; max-width: 720px; color: var(--muted); }

    /* Animations */
    @keyframes float { 0% { transform: translateY(0) } 50% { transform: translateY(-6px) } 100% { transform: translateY(0) } }
    @keyframes fadeUp { from { opacity: 0; transform: translateY(12px) } to { opacity: 1; transform: translateY(0) } }
    .animate { animation: fadeUp .7s ease both; }

    /* Responsive */
    @media (max-width: 900px) {
      .hero { grid-template-columns: 1fr; }
      .about { grid-template-columns: 1fr; }
      .grid.features, .grid.showcase, .grid.projects { grid-template-columns: 1fr 1fr; }
      .nav-links { display:none; position: absolute; top:64px; right: 20px; background: var(--panel); padding: 12px; border-radius: 12px; border: 1px solid rgba(255,255,255,.1); box-shadow: var(--shadow); }
      .menu-toggle { display:inline-flex; }
    }
    @media (max-width: 560px) {
      .grid.features, .grid.showcase, .grid.projects { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container nav">
      <div class="brand">
        <div class="logo" aria-hidden="true"></div>
        <span>YourBrand</span>
      </div>
      <nav class="nav-links" id="navLinks" aria-label="Primary">
        <a href="#home">Home</a>
        <a href="#features">Features</a>
        <a href="#showcase">Showcase</a>
        <a href="#projects">Projects</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
      </nav>
      <div class="row">
        <button class="btn secondary" id="themeToggle" aria-label="Toggle theme">🌓</button>
        <button class="menu-toggle" id="menuToggle" aria-expanded="false" aria-controls="navLinks">Menu</button>
      </div>
    </div>
  </header>

  <main id="home" class="container" style="padding-top: 32px;">
    <!-- Hero -->
    <section class="hero">
      <div>
        <h1 class="animate">Build fast. Look modern. Ship proudly.</h1>
        <p class="animate" style="animation-delay:.08s">A clean, responsive one-page template with everything you need: hero, features, showcase, projects, about, and a contact form. Drop in your content and ship.</p>
        <div class="hero-cta animate" style="animation-delay:.12s">
          <a class="btn" href="#showcase">Explore Showcase</a>
          <a class="btn secondary" href="#contact">Contact Me</a>
        </div>
        <div class="hero-badges animate" style="animation-delay:.16s">
          <span class="badge">HTML + CSS + JS</span>
          <span class="badge">Dark / Light</span>
          <span class="badge">Fully Responsive</span>
        </div>
      </div>
      <div class="hero-card glass animate" style="animation-delay:.1s">
        <div class="row sp-between">
          <strong>Quick Start</strong>
          <span class="muted">~1 min</span>
        </div>
        <ol class="muted" style="margin:0 0 8px 16px;">
          <li>Replace texts & images</li>
          <li>Update links</li>
          <li>Deploy to your host</li>
        </ol>
        <div class="row">
          <input aria-label="email" placeholder="your@email.com" />
          <button class="btn" onclick="alert('Demo only 🙂')">Get Updates</button>
        </div>
      </div>
    </section>

    <!-- Features -->
    <section id="features">
      <h2 class="title center">Features that matter</h2>
      <p class="subtitle center">Accessible, fast, and elegant. The template is crafted with sensible defaults so you can focus on your content.</p>
      <div class="grid features">
        <article class="card glass">
          <h3>Responsive Grid</h3>
          <p>Works great on mobile, tablet, and desktop with minimal tweaking.</p>
        </article>
        <article class="card glass">
          <h3>Dark / Light</h3>
          <p>Built-in theme switcher with local preference persistence.</p>
        </article>
        <article class="card glass">
          <h3>Vanilla JS</h3>
          <p>No frameworks required. Easy to understand and extend.</p>
        </article>
      </div>
    </section>

    <!-- Showcase / Products -->
    <section id="showcase">
      <h2 class="title center">Showcase / Products</h2>
      <p class="subtitle center">Use this grid for portfolio pieces, items, or case studies.</p>
      <div class="grid showcase">
        <div class="item glass card">
          <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?q=80&w=1200&auto=format&fit=crop" alt="Laptop on a desk" loading="lazy" />
          <h4>Dashboard UI</h4>
          <p class="muted">Elegant admin dashboard concept.</p>
          <div class="row sp-between">
            <span class="price">$29</span>
            <button class="btn" onclick="addToCart('Dashboard UI')">Add</button>
          </div>
        </div>
        <div class="item glass card">
          <img src="https://images.unsplash.com/photo-1547658719-da2b51169166?q=80&w=1200&auto=format&fit=crop" alt="Minimal phone mockup" loading="lazy" />
          <h4>Mobile Kit</h4>
          <p class="muted">Clean components for apps.</p>
          <div class="row sp-between">
            <span class="price">$19</span>
            <button class="btn" onclick="addToCart('Mobile Kit')">Add</button>
          </div>
        </div>
        <div class="item glass card">
          <img src="https://images.unsplash.com/photo-1492724441997-5dc865305da7?q=80&w=1200&auto=format&fit=crop" alt="Colorful gradients" loading="lazy" />
          <h4>Gradient Pack</h4>
          <p class="muted">Lovely backgrounds and shapes.</p>
          <div class="row sp-between">
            <span class="price">$9</span>
            <button class="btn" onclick="addToCart('Gradient Pack')">Add</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Projects -->
    <section id="projects">
      <h2 class="title center">Recent Projects</h2>
      <p class="subtitle center">A simple grid you can link to GitHub repos, case studies, or live demos.</p>
      <div class="grid projects">
        <article class="project glass card">
          <span class="badge tag">AWS</span>
          <h3>Serverless API</h3>
          <p>API Gateway + Lambda with JWT auth and CI/CD.</p>
          <a href="#" class="muted">View →</a>
        </article>
        <article class="project glass card">
          <span class="badge tag">E‑commerce</span>
          <h3>PremiumShop</h3>
          <p>Custom storefront with cart, filters, and MySQL backend.</p>
          <a href="#" class="muted">Live Demo →</a>
        </article>
        <article class="project glass card">
          <span class="badge tag">Media</span>
          <h3>Streaming App</h3>
          <p>Secure uploads to S3, signed URLs, and admin dashboard.</p>
          <a href="#" class="muted">Case Study →</a>
        </article>
      </div>
    </section>

    <!-- About -->
    <section id="about" class="about">
      <div>
        <h2 class="title">About Me</h2>
        <p class="muted">I build fast, reliable web apps on AWS with clean frontends and scalable backends. This template is a starting point—replace the content and make it yours.</p>
        <ul class="muted">
          <li>⚡ Performance-focused</li>
          <li>🔒 Security-first architecture</li>
          <li>🛠️ Automated CI/CD</li>
        </ul>
      </div>
      <img src="https://images.unsplash.com/photo-1520975916090-3105956dac38?q=80&w=1200&auto=format&fit=crop" alt="Working setup on a desk" loading="lazy" />
    </section>

    <!-- Contact -->
    <section id="contact">
      <h2 class="title center">Get in touch</h2>
      <p class="subtitle center">Have a project in mind or just want to say hi? Drop a message.</p>
      <div class="glass card" style="max-width:720px;margin:0 auto;">
        <form id="contactForm">
          <div class="row">
            <input required name="name" placeholder="Your name" />
            <input required type="email" name="email" placeholder="Email address" />
          </div>
          <textarea required name="message" rows="5" placeholder="Your message"></textarea>
          <div class="row sp-between">
            <label class="muted"><input type="checkbox" name="updates" /> Send me occasional updates</label>
            <button class="btn" type="submit">Send Message</button>
          </div>
        </form>
        <p id="status" class="muted" role="status" style="margin-top:8px;display:none;">Sending…</p>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <p>© <span id="year"></span> YourBrand. Crafted with ♥.</p>
    </div>
  </footer>

  <script>
    // Theme: persist preference
    const root = document.documentElement;
    const body = document.body;
    const saved = localStorage.getItem('theme');
    if (saved === 'light') body.classList.add('light');

    document.getElementById('themeToggle').addEventListener('click', () => {
      body.classList.toggle('light');
      localStorage.setItem('theme', body.classList.contains('light') ? 'light' : 'dark');
    });

    // Mobile nav toggle
    const menuBtn = document.getElementById('menuToggle');
    const nav = document.getElementById('navLinks');
    menuBtn.addEventListener('click', () => {
      const open = nav.style.display === 'flex';
      nav.style.display = open ? 'none' : 'flex';
      nav.style.flexDirection = 'column';
      menuBtn.setAttribute('aria-expanded', String(!open));
    });

    // Contact form (demo only)
    const form = document.getElementById('contactForm');
    const status = document.getElementById('status');
    form.addEventListener('submit', (e) => {
      e.preventDefault();
      status.style.display = 'block';
      status.textContent = 'Sending…';
      setTimeout(() => {
        status.textContent = 'Thanks! I will get back to you shortly.';
      }, 800);
    });

    // Footer year
    document.getElementById('year').textContent = new Date().getFullYear();

    // Simple cart demo
    function addToCart(name) {
      alert(`${name} added to cart (demo).`);
    }
    window.addToCart = addToCart;
  </script>
</body>
</html>
