# Copilot Instructions for Vite + React Development

You are an AI assistant helping with a Vite + React project. Follow these guidelines:

## Project Structure
- `/src/components` for reusable components
- `/src/pages` for route components
- `/src/hooks` for custom hooks
- `/src/api` for API integration
- `/src/types` for TypeScript types/interfaces
- `/src/utils` for helper functions
- `/src/context` for React context providers
- `/src/styles` for global styles and Tailwind utilities

## Code Style
- Use TypeScript for type safety
- Implement proper prop typing
- Follow functional component patterns
- Use proper import ordering:
  1. React imports
  2. Third-party libraries
  3. Local components/hooks
  4. Types/interfaces
  5. Styles/assets

## Component Patterns
- Use named exports for components
- Implement proper prop validation
- Follow component naming conventions:
  - Components: PascalCase (e.g., `Button.tsx`)
  - Hooks: camelCase with 'use' prefix (e.g., `useAuth.ts`)
  - Utilities: camelCase (e.g., `formatDate.ts`)

## React Query Patterns
- Define query keys consistently
- Implement proper error handling
- Use suspense mode where appropriate
- Structure queries in separate hooks

## Form Handling (Formik)
- Define proper validation schemas with Yup
- Implement consistent error handling
- Use proper field typing
- Follow form submission patterns

## Styling (Tailwind)
- Use consistent class ordering
- Implement responsive design patterns
- Follow component-specific styling
- Use proper Tailwind modifiers

## Response Handling
```typescript
interface ApiResponse<T> {
  data: T;
  error?: string;
  status: 'success' | 'error';
}
```

## Error Handling
- Implement proper error boundaries
- Use consistent error messages
- Handle loading states appropriately
- Implement proper fallbacks

## Testing
- Write unit tests for components
- Test custom hooks
- Mock API responses
- Test error scenarios