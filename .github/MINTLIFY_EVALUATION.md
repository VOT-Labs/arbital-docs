# Mintlify Migration Evaluation

**Date:** 2026-02-03
**Status:** EVALUATED - NO ACTION RECOMMENDED
**Reviewer:** VOT-Labs Engineering

---

## Executive Summary

After evaluating Mintlify as a potential replacement for GitBook, the recommendation is to **stay with GitBook** for the current phase. The migration cost (effort + ongoing fees) doesn't justify the benefits given Arbital's current documentation needs.

---

## Platform Comparison

### Mintlify

| Aspect | Details |
|--------|---------|
| **Focus** | Docs-as-Code, API-first documentation |
| **Notable Users** | Anthropic, Vercel, Coinbase, Cloudflare, Zapier, Cursor |
| **Strengths** | OpenAPI auto-generation, interactive API playground, MCP server generation |
| **File Format** | MDX (Markdown + JSX) with `mint.json` config |
| **Git Sync** | Bi-directional, auto-deploy on push |

### GitBook (Current)

| Aspect | Details |
|--------|---------|
| **Focus** | Content-first, collaborative documentation |
| **Notable Users** | NVIDIA, Zoom, many startups |
| **Strengths** | Visual editor, easy collaboration, good for guides/tutorials |
| **File Format** | Markdown with SUMMARY.md navigation |
| **Git Sync** | Bi-directional via GitHub integration |

---

## Pricing Analysis

### Mintlify

| Tier | Price | Includes |
|------|-------|----------|
| **Hobby (Free)** | $0 | Solo user, custom domain, NO AI, NO collaboration |
| **Pro** | $250/mo (annual) or $300/mo | 5 seats, 250 AI messages/mo, API playground |
| **Custom** | ~$600+/mo | SSO, SOC 2, white-label |

**Startup Program:** 6 months free Pro for VC-backed startups (may apply)

### GitBook

| Tier | Price | Notes |
|------|-------|-------|
| **Free** | $0 | Limited features |
| **Plus** | ~$65/mo + $12/user | Standard features |
| **Pro** | ~$150-249/mo + $12/user | Full features |

---

## Feature Comparison

| Feature | Mintlify | GitBook | Winner |
|---------|----------|---------|--------|
| OpenAPI auto-generation | Excellent | Good | Mintlify |
| Interactive API testing | Built-in playground | Scalar integration | Mintlify |
| Language tabs (code samples) | Native | Via tabs syntax | Tie |
| Visual editor | Web editor only | Full WYSIWYG | GitBook |
| Mermaid diagrams | Supported | Supported | Tie |
| Dark mode | Built-in | Configurable | Tie |
| Search | Algolia included | Built-in + Algolia | Tie |
| Custom components | MDX (full React) | Limited hints/cards | Mintlify |
| AI writing assistant | Pro only ($300/mo) | Available | GitBook |
| MCP server generation | Native | Not available | Mintlify |

---

## Migration Effort Estimate

### Required Changes

1. **File Structure**
   - Convert `SUMMARY.md` → `mint.json` navigation
   - Rename `.md` → `.mdx` (optional but recommended)
   - Reorganize assets folder

2. **Content Migration**
   - Convert GitBook hints → Mintlify callouts
   - Convert GitBook tabs → Mintlify tabs
   - Update internal links

3. **Configuration**
   - Create `mint.json` with branding, navigation, API config
   - Set up GitHub App integration
   - Configure custom domain

4. **Verification**
   - Test all pages render correctly
   - Verify Mermaid diagrams work
   - Test API playground with OpenAPI spec
   - Validate search functionality

### Estimated Effort

| Task | Hours |
|------|-------|
| Initial setup & config | 2-4 |
| Content migration (40+ pages) | 8-12 |
| Testing & fixes | 4-6 |
| Custom domain & DNS | 1-2 |
| **Total** | **15-24 hours** |

---

## Decision Matrix

| Criterion | Weight | GitBook Score | Mintlify Score |
|-----------|--------|---------------|----------------|
| API documentation quality | 25% | 7/10 | 9/10 |
| Ease of use (non-devs) | 15% | 9/10 | 6/10 |
| Cost efficiency | 20% | 8/10 | 4/10 |
| Migration effort | 15% | 10/10 (none) | 3/10 |
| Long-term scalability | 15% | 7/10 | 9/10 |
| Current feature adequacy | 10% | 8/10 | 9/10 |
| **Weighted Total** | 100% | **7.85** | **6.55** |

---

## Recommendation

### Stay with GitBook

**Rationale:**

1. **Cost:** Mintlify Pro at $250-300/mo is significant for current stage
2. **Effort:** 15-24 hours migration effort with risk of issues
3. **Current State:** Recent enhancements (language tabs, Postman links, OpenAPI spec) address key gaps
4. **Content Mix:** Arbital docs are guide-heavy, not purely API reference
5. **Team:** Non-technical contributors benefit from GitBook's visual editor

### Revisit When

- [ ] API becomes primary product offering
- [ ] Team grows beyond 5 documentation contributors
- [ ] Need advanced features (MCP servers, custom React components)
- [ ] Secure Series A+ funding with documentation budget
- [ ] Qualify for Mintlify Startup Program (6 months free)

---

## Alternative Improvements (GitBook)

Instead of migrating, enhance current GitBook setup:

1. ✅ Added language tabs to API reference (completed)
2. ✅ Added Postman collection links (completed)
3. ✅ Added OpenAPI spec download (completed)
4. [ ] Apply for Algolia DocSearch (free for docs sites)
5. [ ] Create video tutorials for complex topics
6. [ ] Add more Mermaid diagrams for visual learners

---

## References

- [Mintlify Pricing](https://www.mintlify.com/pricing)
- [GitBook vs Mintlify Comparison](https://www.gitbook.com/comparison/gitbook-vs-mintlify)
- [Mintlify Documentation](https://mintlify.com/docs)

---

*Evaluation completed: 2026-02-03*
