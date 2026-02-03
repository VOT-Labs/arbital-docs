# Contributing to Arbital Docs

Thank you for your interest in improving Arbital's documentation! Community contributions help make our docs better for everyone.

---

## Quick Start

1. **Fork** this repository
2. **Clone** your fork locally
3. **Create** a branch (`docs/your-change`)
4. **Make** your changes
5. **Submit** a pull request

---

## Ways to Contribute

### Report Issues

Found something wrong or confusing?

- **Typos & Errors:** Open an [issue](https://github.com/VOT-Labs/arbital-docs/issues/new?labels=docs:accuracy&template=docs-fix.md) with the page link and correction
- **Missing Content:** Describe what you expected to find
- **Broken Links:** Report the page and broken link
- **Outdated Info:** Let us know what changed

### Suggest Improvements

Have ideas to make the docs better?

- Open an [issue](https://github.com/VOT-Labs/arbital-docs/issues/new?labels=docs:polish,enhancement) describing your suggestion
- Include "before" and "after" examples if possible
- Reference other docs you think handle similar topics well

### Submit Changes

Ready to contribute directly?

1. Check [open issues](https://github.com/VOT-Labs/arbital-docs/issues) for existing tasks
2. Comment on an issue to claim it
3. Follow the writing guidelines below
4. Submit a PR for review

---

## Writing Guidelines

### Style

- **Voice:** Clear, direct, second person ("you" not "the user")
- **Tone:** Professional but approachable
- **Length:** Concise — say more with fewer words
- **Structure:** Use headers, tables, and lists for scanability

### Formatting

- **Markdown:** Standard GitHub-flavored markdown
- **Indentation:** 2 spaces (not tabs)
- **Line Length:** No hard wrap (let the renderer handle it)
- **Links:** Use relative paths for internal links (`../guides/security.md`)

### Content Blocks

Use GitBook hint blocks for callouts:

```markdown
{% hint style="info" %}
Informational note
{% endhint %}

{% hint style="warning" %}
Warning or caution
{% endhint %}

{% hint style="danger" %}
Critical warning
{% endhint %}

{% hint style="success" %}
Positive outcome or tip
{% endhint %}
```

### Diagrams

Use Mermaid for diagrams (supported natively in GitBook):

````markdown
```mermaid
flowchart LR
    A[Start] --> B[Process] --> C[End]
```
````

### Code Examples

- Include language identifiers on code fences
- Use realistic but safe example values
- Never include real API keys, wallet addresses, or credentials
- Provide examples in multiple languages where relevant (cURL, JavaScript, Python)

### Page Structure

Every page should follow this structure:

```
# Page Title

Brief description of what this page covers.

---

## Sections

Content organized with clear headings.

---

*Last updated: YYYY-MM-DD*
```

---

## File Structure

```
arbital-docs/
├── README.md              # Homepage
├── SUMMARY.md             # Navigation (GitBook sidebar)
├── CONTRIBUTING.md         # This file
├── changelog.md            # Release notes
├── faq.md                  # Frequently asked questions
├── overview/               # Platform overview
├── getting-started/        # Onboarding guides
│   └── wallets/            # Wallet-specific guides
├── exchanges/              # Exchange documentation
├── guides/                 # How-to guides
├── reference/              # API docs, glossary
├── security/               # Security & audit info
└── legal/                  # Risk disclosure, terms
```

### Adding a New Page

1. Create the `.md` file in the appropriate directory
2. Add the page to `SUMMARY.md` in the correct section
3. Cross-link from related pages
4. Add "Last updated" timestamp at the bottom

---

## Review Process

1. **Automated:** GitBook builds a preview for every PR
2. **Manual:** A maintainer reviews for accuracy and style
3. **Merge:** Approved PRs are merged to `main` and auto-deployed

### What We Look For

- Accuracy (does the content match current platform behavior?)
- Clarity (would a new user understand this?)
- Completeness (are edge cases and errors covered?)
- Consistency (does it follow existing style?)

---

## Community FAQ Contributions

Have a question that should be in the FAQ?

1. Check the [existing FAQ](faq.md) first
2. If not covered, open an issue with label `docs:content`
3. Include the question and suggested answer
4. We'll review and add it

Common FAQ sources:
- Discord community questions
- Telegram support threads
- GitHub issue discussions

---

## Code of Conduct

- Be respectful and constructive
- Focus on making docs better for all users
- No spam, self-promotion, or off-topic content
- Credit sources when referencing external content

---

## Need Help?

- **Discord:** Ask in the docs channel (coming soon)
- **GitHub Discussions:** Open a discussion for broader topics
- **Issues:** For specific bugs or improvements

Thank you for helping make Arbital docs better!
